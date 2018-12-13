class CommentsController < ApplicationController
	before_action :find

	def new
		@comment = Comment.new
	end

	def create
		@comment = Comment.new(comment_params)
		@comment.user_id = current_user.id
		if params[:discussion_id]
			@comment.discussion_id = @discussion.id
			if @comment.save
				redirect_to discussion_path(@discussion)
			else
				render 'new'
			end
		else
			@comment.group_id = @group.id
			if @comment.save
				redirect_to group_path(@group)
			else
				puts @comment.errors.full_messages
				render 'new'
			end
		end
  end

  def show
    @comment = Comment.find(params[:id])
  end
  
  def find_user
	
  end
	
	private
	
		def comment_params
			params.require(:comment).permit(:description)
		end
		
		def find
			if params[:discussion_id]
				@discussion = Discussion.find(params[:discussion_id])
			else
				@group = Group.find(params[:group_id])
			end
		end
		
		def find_user
			@user = User.find(params[:user_id])
		end
end
