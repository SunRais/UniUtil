class UsersController < ApplicationController
	
	layout 'private_area'
	
	before_action :find_user, only: [:show]
	before_action :authenticate_user!, only: [:show]

	def show
	end

	private
		def find_user
			@user = User.find(params[:id])
			@course = Course.find(@user.course_id)
		end
end
