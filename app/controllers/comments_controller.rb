class CommentsController < ApplicationController
	before_action :find_discussion

	def new
		@comment = Comment.new
	end
	
	def create
		@comment = Comment.new(comment_params)
		@comment.discussion_id = @discussion.id
		@comment.user_id = current_user.id
		if @comment.save
			redirect_to discussion_path(@discussion)
		else
			render 'new'
		end 
	end
	
	private
	
		def comment_params
			params.require(:comment).permit(:description)
		end
		
		def find_discussion
			@discussion = Discussion.find(params[:discussion_id])
		end

end
