module Cms
	class PagesController < ApplicationController
		layout 'templates/default-cms/default'
		
		before_action :set_page, only: [:edit, :update, :destroy]
		
		def index
			@pages = Page.all
			#render :json => @pages
		end

		def new
			@page = Page.new
		end

		def create
			@page = Page.new(set_params)

			if @page.save
				flash[:succes] = t :success
				redirect_to action: 'index'
			else
				render action: 'new'
			end
		end

		def edit

		end

		def update
			if @page.update(set_params)
				flash[:success] = t :success
				redirect_to action: 'index'
			else
				render action: 'edit'
			end
		end

		def destroy
			if @page.destroy
				flash[:success] = t :success
				redirect_to action: 'index'
			end
		end

		private

		def set_params
			params.require(:page).permit(:title,:content, :publish,:page_category_id)
		end

		def set_page
			@page = Page.friendly.find(params[:id])
		end
	end
end