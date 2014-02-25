class ServicesController < ApplicationController
	layout 'landing_page'

	def rehab_b
		@guest = Guest.new

		# @gallery_width is for js script gallery
		@gallery_width = (set_device == "mobile" ? "100%" : "75%")
  end

	def kw_groups
		# add new kw_groups here
		# need to add these kw's to rspec request test as well
		# need to add partial in formate of "key_word_content.html.erb" the partial covers the first two tabs
		# adword destination url is /services/key-word/version
		["rehab", "detox", "dual diagnosis"]
	end

  def landing_kw
		@guest = Guest.new

		# @gallery_width is for js script gallery
		@gallery_width = (set_device == "mobile" ? "100%" : "75%")  

		kw_group = params[:kw_group].gsub('-',' ').downcase
		if kw_groups.include?(kw_group)
			@kw_group = kw_group
		else 
			@kw_group = 'rehab' # defaults to rehab if typo or something from adwords
		end 
  end

	def thanks

		@guest= Guest.new(guest_params)	
		refer_url = request.env["HTTP_REFERER"]
		
		# if @guest not saved error messages are shown with form
		@guest.save ? (@guestSaved = true) : (@guestSaved=false)	

		if @guestSaved 
			AdminMailer.inquiry_email(@guest, refer_url).deliver
		end	
		# Use below for testinng
		#@guestSaved=true
	end

	private

	def guest_params
		params.require(:guest).permit(:name, :email, :phone, :comments) 
	end 

end
