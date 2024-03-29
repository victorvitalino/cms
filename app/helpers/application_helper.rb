module ApplicationHelper

	def link_nav_to(title, category,*html)
			@page = Page.friendly.find_by(:title => title)

   		link_to "#{title}", content_page_path(@page) if @page.present?
	end


	def post_each(category, limit = 10, order = 'ASC')
    	@posts = Post.all.limit(limit).order("created_at #{order}")

    	@posts.each do |e|
    		yield e
    	end
	end

	def slider_each(category, limit = 10, order = 'ASC')
		@posts = Post.where(feature: true).limit(limit).order("created_at #{order}")

		@posts.each do |s|
			yield s
		end
	end

	def batata(categories)
		@sliderss = categories
		if @sliderss == 'habitação'
				@sliderss = 'habitacao'
		elsif @sliderss == 'regularização'
				@sliderss = 'regularizacao'
		else
			@sliderss = categories
		end

			yield @sliderrs
	end


	def page_each(category, limit, order)

	end
end
