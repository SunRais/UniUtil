class DiscussionsController < ApplicationController
  
  before_action :find_discussion, only: [:show, :edit, :update, :destroy]
  def index
	if params[:discussion_type].blank?
	  @discussions = Discussion.all.order("created_at DESC")
	else
	 @discussion_type = params[:discussion_type]
	 @discussion = Discussion.where(:discussion_type => @discussion_type).order("created at DESC")
	end
  end
  
  def new
    @discussion = current_user.discussions.build
    
  end
  
  def show
  end
  def create
	@discussion = current_user.discussions.build(discussions_params)
	@discussion.discussion_type = params[:type_discussion]
	
	if @discussion.save
	  redirect_to discussions_path
	else
	  render 'show'
	end
  end
  
  
  
  private
  
	def discussions_params
	  params.require(:discussion).permit(:title, :description)
	end
	
	def find_discussion
	  @discussion = Discussion.find(params[:id])
	end
end
