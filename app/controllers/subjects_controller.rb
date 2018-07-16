class SubjectsController < ApplicationController

	before_action :find_subject, only: [:show, :edit, :update, :destroy]

	def index
		if params[:course].blank?
			@subjects = Subject.all.order("nome ASC")
		else

		end
	end

	def show
	end

	def new
		@subject = Subject.new
	end

	def create
		@subject = Subject.new(subject_params)
		if @subject.save 
			redirect_to root_path
		else
			render 'new'
		end
	end

	def edit

	end

	def update
		if @subject.update(subject_params)
			redirect_to subject_path(@subject)
		else
			render 'edit'
		end
	end

	def destroy
		@subject.destroy
		redirect_to root_path
	end 

	private

		def subject_params
			params.require(:subject).permit(:nome, :cfu, :descrizione, courses_ids: [])
		end

		def find_subject
			@subject = Subject.find(params[:id])
		end

end
