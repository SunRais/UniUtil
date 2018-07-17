class PostsController < ApplicationController

	before_action :find_post, only: [:show, :edit, :update, :destroy]
	before_action :authenticate_user!, only: [:new, :edit]

	def index
		if params[:category].blank?
			if params[:search].blank?
				@posts = Post.all.order("created_at DESC")
			else
				@posts = Post.where("titolo LIKE ? ", "%#{params[:search]}%").order("created_at DESC")
			end
		else
			@category_id = Category.find_by(nome: params[:category]).id
			@posts = Post.where(:category_id => @category_id).order("created_at DESC")
		end
	end

	def show
		if @post.reviews.blank?
			@average_review = 0
		else 
			@average_review = @post.reviews.average(:rating).round(2)
		end
	end

	def new
		@post = current_user.posts.build
		@categories = Category.all.map{ |c| [c.nome, c.id] }
	end

	def create
		@post = current_user.posts.build(post_params)
		@post.category_id = params[:category_id]
		if @post.save 
			redirect_to root_path
		else
			render 'new'
		end
	end

	def edit
		@categories = Category.all.map{ |c| [c.nome, c.id] }
	end

	def update
		@post.category_id = params[:category_id]
		if @post.update(post_params)
			redirect_to post_path(@post)
		else
			render 'edit'
		end
	end

	def destroy
		@post.destroy
		redirect_to root_path
	end 

	private

		def post_params
			params.require(:post).permit(:titolo, :contenuto, :category_id, :post_img, :search)
		end

		def find_post
			@post = Post.find(params[:id])
		end
end
