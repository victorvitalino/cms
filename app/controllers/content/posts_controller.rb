module Content
	class PostsController < ApplicationController

		def index
			@post = Post.all
		end

		def new
			@post = Post.new
		end

		def create
			if @post.save
				redirect_to action: 'index'
			else
				render action: 'new'
			end
		end

		def edit
		end

		def update
			if @post.update(params)
				redirect_to action: 'index'
			else
				render action: 'edit'
			end
		end

		def destroy
			@post.destroy
		end

		private

		def params
			params.require(:post).permit(:title)
		end

		def set_post
			@post = Post.find(params[:id])
		end


	end
end