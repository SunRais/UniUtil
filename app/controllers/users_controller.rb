class UsersController < ApplicationController
	
	before_action :find_user
	before_action :authenticate_user!

	def show
	end

	def situation
	end

	private
		def find_user
			@user = User.find(params[:id])
			@course = Course.find(@user.course_id)
		end
end
