class GroupsController < ApplicationController

	before_action :find_group, only: [:show, :edit, :update, :destroy]

	def index
		if params[:search]
  		@groups = Group.where('name LIKE ? AND id NOT IN (SELECT group_id FROM groups_users WHERE user_id = ?)', "%#{params[:search]}%", "#{current_user.id}").order("created_at DESC")
		else		
			@groups = Group.where('current_students != max_students AND id NOT IN (SELECT group_id FROM groups_users WHERE user_id = ?)', "#{current_user.id}").order("created_at DESC")
		end

		@my_groups = Group.joins(:users)
		#@my_groups = Group.find_my_groups(current_user.id)
	end


	def new
		@group = current_user.groups.build
	end

	def show
	end

	def create
		@group = current_user.groups.build(groups_params)
		@group.current_students = 1
		#la prossima istruzione serve per creare il collegamento tra group e user
		@group.user_ids = current_user.id

		if @group.save
			Group.set_status_active(current_user.id, @group.id)
			redirect_to groups_path
		else
			render 'show'
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