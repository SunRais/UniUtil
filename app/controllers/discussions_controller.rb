class DiscussionsController < ApplicationController
  
  before_action :find_discussion, only: [:show, :edit, :update, :destroy, :add_to_favorites, :remove_from_favorites]
  def index
  	if params[:search]
  		@discussions = Discussion.paginate(page: params[:page], per_page: 7).where('title LIKE ?', "%#{params[:search]}%").order("created_at DESC")
  		sql = "SELECT id FROM discussions where title LIKE " + params[:search].to_s + " order by created_at DESC"
  	elsif params[:discussion_type]
			@discussion_type = params[:discussion_type]
	 		@discussions = Discussion.paginate(page: params[:page], per_page: 7).where(:discussion_type => @discussion_type).where('title is not null').order("created_at DESC")
			sql = "SELECT id from discussions where discussion_type LIKE '" + params[:discussion_type].to_s + "' AND title is not null order by created_at DESC"
		elsif params[:user_id]
			@discussions = Discussion.paginate(page: params[:page], per_page: 7).where(:user_id => params[:user_id]).where('title IS NOT null').order("created_at DESC")
			sql = "SELECT id from discussions where user_id = "+ params[:user_id].to_s + " AND title IS NOT null order by created_at DESC"
		else				
			@discussions = Discussion.paginate(page: params[:page], per_page: 7).where('title IS NOT null').all.order("created_at DESC")
			sql = "SELECT id from discussions where title is not null order by created_at DESC"
		end
		@discussions.includes(:user)
		@comments_number = Discussion.comments_number(sql)

  end
  
  def new
    @discussion = current_user.discussions.build
  end
  
  def show
  		@favorite = Discussion.check_favorite(current_user.id, @discussion.id)
		@comments = Comment.where('discussion_id = ?', "#{params[:id]}")
		@user = User.where('id = ?',"#{@discussion.user_id}").first
  end
  
  def search 
  	
  end
  
  def create
		@discussion = current_user.discussions.build(discussions_params)
		@discussion.discussion_type = params[:discussion_type]
		
		if @discussion.save
			redirect_to discussions_path
		else
			render 'new'
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

  def add_to_favorites
  	Discussion.put_to_favorites(current_user.id, @discussion.id)
	redirect_to discussion_path(@discussion)
  end

  def remove_from_favorites
	Discussion.no_more_favorite(current_user.id, @discussion.id)
	redirect_to discussion_path(@discussion)
  end
  
  private
  
	def discussions_params
	  params.require(:discussion).permit(:title, :description, :discussion_type, :search, :file)
	end
	
	def find_discussion
	  @discussion = Discussion.find(params[:id])
	end
end
