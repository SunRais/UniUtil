class UsersController < ApplicationController
	
	before_action :find_user
	before_action :authenticate_user!
	before_action :authorize_current_user, only: [:show]

	def show
	end

	def situation
	end

	private
		def find_user
			@user = User.find(params[:id])
			#@course = Course.find(@user.course_id)
		end

		def authorize_current_user
    		redirect_to(root_path) unless current_user.id == @user.id
		end
end
