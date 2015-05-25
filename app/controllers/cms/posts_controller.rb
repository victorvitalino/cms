module Cms
	class PostsController < ApplicationController
		layout 'templates/default-cms/default'

		before_action :set_post, only: [:edit, :update, :destroy]

		def index
			@posts = Post.all
		end

		def new
			@post = Post.new
		end

		def create
			@post = Post.new(set_params)

			if @post.save
				flash[:succes] = t :success

				redirect_to action: 'index'
			else
				render action: 'new'
			end
		end

		def edit

		end

		def update
			if @post.update(set_params)
				flash[:success] = t :success
				redirect_to action: 'index'
			else
				render action: 'edit'
			end
		end

		def destroy
			if @post.destroy
				flash[:success] = t :success
				redirect_to action: 'index'
			end
		end

		private

		def set_params
			params.require(:post).permit(:title, :content, :post_category_id, :publish)
		end

		def set_post
			@post = Post.find(params[:id])
		end
	end
end
