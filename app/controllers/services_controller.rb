class ServicesController < ApplicationController
	layout 'landing_homepage'

	def rehab
		@guest = Guest.new
		@gallery_width = (set_device == "mobile" ? "100%" : "75%")
  end

	def thanks

		@guest= Guest.new(guest_params)	
		
		# if @guest not saved error messages are shown with form
		@guest.save ? (@guestSaved = true) : (@guestSaved=false)	

		if @guestSaved 
			AdminMailer.inquiry_email(@guest).deliver
		end	
		# Use below for testinng
		#@guestSaved=true
	end

	private

	def guest_params
		params.require(:guest).permit(:name, :email, :phone, :comments) 
	end 

end
