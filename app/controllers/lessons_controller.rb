class LessonsController < ApplicationController

	before_action :find_user_id, only: [:index, :new, :new_pattern]
	before_action :find_lesson, only: [:show, :edit, :update, :destroy]
	before_action :authenticate_user!, only: [:new, :new_pattern, :edit]
	before_action :find_your_subjects, only: [:edit, :index]
	before_action :authorize_professor, only: [:index, :new, :new_pattern, :create, :update, :destroy]

	def index
		if params[:subject].blank?
			@mylessons = Lesson.where(:user_id => @user_id)
		else
			@subject_id = Subject.find_by(name: params[:subject]).id
			@mylessons = Lesson.where(:user_id => @user_id).where(:subject_id => @subject_id)
		end
	end

	def show
	end

	def new
		@lesson = current_user.lessons.build
		@subjects = Subject.where(:user_id => @user_id).map{ |s| [s.name, s.id] }
	end

	def new_pattern
		@lesson = current_user.lessons.build
		@subjects = Subject.where(:user_id => @user_id).map{ |s| [s.name, s.id] }
	end

	def create_pattern
		@lesson = current_user.lessons.build(pattern_lesson_params)
		@lesson.subject_id = params[:subject_id]
		@lesson.date = params[:start_date]
		if @lesson.save 
			redirect_to root_path
		else
			render 'new'
		end

	end

	def create
		@lesson = current_user.lessons.build(lesson_params)
		@lesson.subject_id = params[:subject_id]
		if @lesson.save 
			redirect_to root_path
		else
			render 'new'
		end
	end

	def edit
	end

	def update
		@lesson.subject_id = params[:subject_id]
		if @lesson.update(lesson_params)
			redirect_to lesson_path(@lesson)
		else
			render 'edit'
		end
	end

	def destroy
		@lesson.destroy
		redirect_to root_path
	end 

	private

		def find_lesson
			@lesson = Lesson.find(params[:id])
		end

		def lesson_params
			params.require(:lesson).permit(:date, :classroom, :building, :user_id, :subject_id, :topic, :start_time)
		end

		def pattern_lesson_params
			params.require(:lesson).permit(:date, :classroom, :building, :user_id, :subject_id, :start_time, :topic, :start_date, :end_date)
		end

		def find_user_id
			@user_id = current_user.id
		end

		def find_your_subjects
			@subjects = Subject.where(:user_id => @user_id)
		end

		def authorize_admin
    		redirect_to(root_path) unless current_user.is_admin
		end

		def authorize_professor
    		redirect_to(root_path) unless current_user.is_professor
		end

end