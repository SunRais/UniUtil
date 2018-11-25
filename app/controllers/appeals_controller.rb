class AppealsController < ApplicationController

	before_action :authenticate_user!
	before_action :find_post, only: [:show, :edit, :update, :destroy]

	def index
		@appeals = Appeal.all.order("created_at DESC")
	end

	def show

	end

	def new
		@appeal = current_user.appeals.build
	end

	def create
		@appeal = current_user.appeals.build(appeal_params)
		@post.category_id = params[:category_id]
		if @post.save 
			redirect_to root_path
		else
			render 'new'
		end
	end

	private

		def find_appeal
			@appeal = Appeal.find(params[:id])
		end

		def appeal_params
			params.require(:appeal).permit(:date, :place, :note, :classroom, :search)
		end
end
