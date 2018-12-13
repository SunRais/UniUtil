class SubjectsController < ApplicationController
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
		@subjects = current_user.subjects
	end

	def show
		@followed = current_user.subjects.exists?(@subject.id)
		@prof = User.where(["id =?", @subject.user_id]).first
	end

	def follow
		@user = current_user
		@user.subjects << @subject
		redirect_to subjects_path
	end

	def unfollow
		Subject.no_more_following(current_user.id, @subject.id)
		redirect_to subjects_path
	end

	private

		def find_subject
			@subject = Subject.find(params[:id])
		end
end
