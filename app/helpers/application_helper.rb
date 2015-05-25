module ApplicationHelper

	def link_nav_to(title, category,*html) 
    @page = Page.find_by_title(title)
    link_to "#{title}", content_page_path(@page) if @page.present?
	end

	def link_subnav_to(title, url, *html)
	end

	def post_each(category, limit, order)
	end

	def page_each(category, limit, order)
	end
end
