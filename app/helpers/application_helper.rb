module ApplicationHelper

	def breadcrumb_pages
		
		# initialize page to current page 
		page = @cms_page
		pages = []
		# loop through pages until top of hierarchy where parent_id is nil
		until page.parent_id.nil?
			pages << page.id
			page = @cms_site.pages.find_by id: page.parent_id
		end

		# add top of hierarchy to array 
		# ASSUMES only one page has no parent_id
		@last_page = pages.size
		pages << @cms_site.pages.find_by(parent_id: nil).id
			
	end
end
