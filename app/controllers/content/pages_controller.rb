module Content
	class PagesController < ApplicationController
		layout 'layouts/templates/jeruza/jeruza'
    
		def index
			@pages = Page.all
		end

		def show
			@page = Page.friendly.find(params[:id])
		end

	end
end	