class CommentsController < ApplicationController
	before_action :find

	def new
		@comment = Comment.new
	end

	def create
		@comment = Comment.new(comment_params)
		@comment.user_id = current_user.id
		@comment.discussion_id = @discussion.id
		if @comment.save
			(@discussion.users.uniq - [current_user] - [@discussion.user]).each do |user|
				Notification.create(recipient: user, actor: current_user, action: "posted a ", notifiable: @comment)
			end
			if current_user != @discussion.user
				Notification.create(recipient: @discussion.user, actor: current_user, action: "posted a ", notifiable: @comment)
			end
			redirect_to discussion_path(@discussion)
		else
			redirect_to discussion_path(@discussion)
		end
  end

  def show
    @comment = Comment.find(params[:id])
  end
  
  def find_user
	
  end
	
	private
	
		def comment_params
			params.require(:comment).permit(:description, :file)
		end
		
		def find
			@discussion = Discussion.find(params[:discussion_id])
		end
		
		def find_user
			@user = User.find(params[:user_id])
		end
end
