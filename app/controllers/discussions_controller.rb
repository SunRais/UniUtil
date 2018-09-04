class DiscussionsController < ApplicationController
  def index
  end
  
  def new
    @discussion = Discussion.new
  end
  
  def create
	@discussion = Discussion.new(discussion_params)
  end
  
  private
  
	def discussions_params
		params.require(:discussion).permit(:title, :description)
	end
  
end
