class ServicesController < ApplicationController
	layout 'landing_homepage'

	def rehab_b
		@guest = Guest.new

		# @gallery_width is for js script gallery
		@gallery_width = (set_device == "mobile" ? "100%" : "75%")
  end

	def kw_groups
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
			@kw_group = 'rehab'
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
