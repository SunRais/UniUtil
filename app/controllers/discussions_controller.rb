class DiscussionsController < ApplicationController
  
  before_action :find_discussion, only: [:show, :edit, :update, :destroy]
  def index
  	if params[:search]
  		@discussions = Discussion.where('title LIKE ?', "%#{params[:search]}%").order("created_at DESC")
  	elsif params[:discussion_type]
			@discussion_type = params[:discussion_type]
			if @discussion_type == "Gruppi di studio"
  			redirect_to groups_path
  		end
	 		@discussions = Discussion.where(:discussion_type => @discussion_type).order("created_at DESC")
		elsif params[:user_id]
			@discussions = Discussion.where(:user_id => params[:user_id]).order("created_at DESC")
		else				
			@discussions = Discussion.all.order("created_at DESC")
		end
  end
  
  def new
    @discussion = current_user.discussions.build
  end
  
  def show
	#@discussion = Discussion.includes(:comments, :user)
  end
  
  def search 
  	
  end
  
  def create
		@discussion = current_user.discussions.build(discussions_params)
		@discussion.discussion_type = params[:discussion_type]
		
		if @discussion.save
			redirect_to discussions_path
		else
			render 'show'
		end
  end
  
  def edit
  
  end
  
  def update
		@discussion.discussion_type = params[:discussion_type]
		if @discussion.update(discussions_params)
			redirect_to discussion_path(@discussion)
		else
			render 'edit'
		end
  end
  
  def destroy
  	#Comment.where(:discussion_id => @discussion.id).destroy_all
  	@discussion.destroy
		redirect_to discussions_path
  end
  
  private
  
	def discussions_params
	  params.require(:discussion).permit(:title, :description, :discussion_type, :search)
	end
	
	def find_discussion
	  @discussion = Discussion.find(params[:id])
	end
end
