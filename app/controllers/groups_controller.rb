class GroupsController < ApplicationController

	def index
	end

	def new
		@group = current_user.groups.build
	end

	def create
		@group = current_user.groups.build(groups_params)
		@group.current_students = 1
		@group.status = "active"
		if @group.save
			redirect_to groups_path
		else
			render 'show'
	end

	def edit
	end

	def destroy
	end

	private

	def groups_params
		params.require(:group).permit(:name, :max_students)
	end

end