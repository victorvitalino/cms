module Content
	class PostsController < ApplicationController
		layout 'templates/jeruza/jeruza'
		before_action :set_post, only: [:show]
		def index
			@post = Post.all
		end

		def show
		end

		private
	
		def set_post
			@post = Post.find(params[:id])
		end


	end
end