class AnnouncementsController < ApplicationController
  
  before_action :find_subject

  def new
    @announcement = Announcement.new
  end

  def create
    @announcement = Announcement.new(announcement_params)
    @announcement.subject_id = @subject.id
    if @announcement.save
      redirect_to subject_path(@subject)
    else
      render 'new'
    end 
  end

  def show
    @comment = Comment.find(params[:id])
  end
  
  private
  
    def announcement_params
      params.require(:announcement).permit(:title, :content)
    end
    
    def find_subject
      @subject = Subject.find(params[:subject_id])
    end
    
end
