module ApplicationHelper

	def link_nav_to(title, category,*html) 
		@category = PageCategory.find_by_name(category)
    	@page = Page.find_by(:title => title, :page_category_id => @category)
    
   		link_to "#{title}", content_page_path(@page) if @page.present?
	end

<<<<<<< HEAD
	def post_each(category, limit, order)
=======
	def link_subnav_to(title, category)

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
>>>>>>> c022be734dc9b4c43c8efaf0578e3480e4e8268e
	end


	def page_each(category, limit, order)
		
	end
end
