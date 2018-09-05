class DiscussionsController < ApplicationController
  
  before_action :find_discussion, only: [:show, :edit, :update, :destroy]
  def index
  end
  
  def new
    @discussion = Discussion.new
  end
  
  def show
  end
  def create
	@discussion = Discussion.new(discussions_params)
	
	if @discussion.save
	  redirect_to new_discussion_path
	else
	  render 'new'
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
