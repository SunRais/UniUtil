class SubjectsController < ApplicationController
	before_action :authenticate_user!
    before_action :check_prof, only: [:my_subjects]
	before_action :find_subject, only: [:show, :follow, :unfollow, :edit, :update, :destroy]

	def index
		if params[:course].blank?
			if params[:search].blank?
				@subjects = Subject.not_followed_subjects(current_user.id)
			else
				@subjects = Subject.not_followed_subjects_with_search(params[:search], current_user.id)
			end
		else
			@course = Course.find_by(name: params[:course])
			@subjects = Subject.not_followed_subjects_with_course(@course.id, current_user.id)
		end
	end

	def index_followed
		@subjects = Subject.select_followed(current_user.id)
	end

	def show
		@followed = Subject.check_followed(current_user.di, @subject.id)
		@prof = User.where(["id =?", @subject.user_id]).first
	end

	def follow
		Subject.follow_subject(current_user.id, @subject.id)
		redirect_to subjects_path
	end

	def unfollow
		Subject.no_more_following(current_user.id, @subject.id)
		redirect_to subjects_path
	end

	def my_subjects
		@subjects = Subject.where(["user_id =?", @current_user.id])
	end

	private

		def find_subject
			@subject = Subject.find(params[:id])
		end

		def check_prof
	 	  	redirect_to "/", notice: 'Non hai i permessi per visitare la pagina richiesta.' unless current_user.is_professor
		end
end
