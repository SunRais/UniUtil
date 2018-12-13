class GroupsController < ApplicationController

	before_action :find_group, only: [:show, :edit, :update, :destroy]

	def index
		if params[:search]
  		@groups = Group.where('name LIKE ? AND id NOT IN (SELECT group_id FROM groups_users WHERE user_id = ?)', "%#{params[:search]}%", "#{current_user.id}").order("created_at DESC")
		else		
			@groups = Group.where('current_students != max_students AND id NOT IN (SELECT group_id FROM groups_users WHERE user_id = ?)', "#{current_user.id}").order("created_at DESC")
		end

		#@joinable = Group.find_joinable_groups(current_user.id)
		@my_groups = Group.find_my_groups(current_user.id)

	end

	def new
		@group = current_user.groups.build
	end

	def show
		@discussion = Discussion.where(:id => @group.discussion_id)
		@comments = Comment.where(:discussion_id => @discussion.ids)
		@comment = Comment.new()
	end

	def create
		@discussion = current_user.discussions.build()
		@discussion.discussion_type = "Gruppi di studio"
		@discussion.user_id = current_user.id
		if @discussion.save
			@group = current_user.groups.build(groups_params)
			@group.current_students = 1
			#la prossima istruzione serve per creare il collegamento tra group e user
			@group.discussion_id = Discussion.last.id
			if @group.save
				@groups_users = current_user.groups_users.build()
				@groups_users.user_id = user_id
				@groups_users.group_id = @group.id
				@groups_users.status = 'active'
				if @groups_users.save
					redirect_to groups_path
				else
					render 'show'
			 end
			end
		end
	end

	def edit
	end

	def destroy
	end

	private

	def groups_params
		params.require(:group).permit(:name, :max_students)
	end

	def find_group
		@group = Group.find(params[:id])
	end

end