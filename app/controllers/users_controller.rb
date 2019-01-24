class UsersController < ApplicationController
	
	before_action :find_user
	before_action :authenticate_user!
	#before_action :authorize_current_user, only: [:show]

	def show
	end

	def situation
	end

	private
		def find_user
			@user = User.find(params[:id])
		end

		def authorize_current_user
			if current_user.id != @user.id
				if !@user.is_professor
    				redirect_to(root_path) 
    			end
    		end
		end
end
