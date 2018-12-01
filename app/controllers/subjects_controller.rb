class SubjectsController < ApplicationController
	before_action :find_subject, only: [:show, :follow, :edit, :update, :destroy]

	def index
		if params[:course].blank?
			if params[:search].blank?
				@subjects = Subject.all.order(:name)
			else
				@subjects = Subject.where("name LIKE ? ","%#{params[:search]}%").order(:name)
			end
		else
			@course = Course.find_by(name: params[:course])
			@subjects = @course.subjects
		end
	end

	def index_followed
		@subjects = current_user.subjects
	end

	def show
		@followed = current_user.subjects.exists?(@subject.id)
	end

	def follow
		@user = current_user
		@user.subjects << @subject
		redirect_to subjects_path
	end

	private

		def find_subject
			@subject = Subject.find(params[:id])
		end
end
