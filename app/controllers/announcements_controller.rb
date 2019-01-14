class AnnouncementsController < ApplicationController
  
  before_action :find_subject

  def new
    @announcement = Announcement.new
  end

  def create
    @announcement = Announcement.new(announcement_params)
    @announcement.subject_id = @subject.id
    if @announcement.save
      (@subject.users.uniq - [current_user]).each do |user|
        Notification.create(recipient: user, actor: current_user, action: "published an", notifiable: @announcement)
      end
      redirect_to subject_path(@subject)
    else
      redirect_to subject_path(@subject)
    end 
  end

  def show
    @comment = Comment.find(params[:id])
  end
  
  private
  
    def announcement_params
      params.require(:announcement).permit(:title, :content, :file)
    end
    
    def find_subject
      @subject = Subject.find(params[:subject_id])
    end
    
end
