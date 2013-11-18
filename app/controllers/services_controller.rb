class ServicesController < ApplicationController
	layout 'landing_homepage'

	def rehab
		@guest = Guest.new
	end	

	def thanks

		@guest= Guest.new(guest_params)	

		@guest.save ? (@guestSaved = true) : (@guestSaved=false)	

	end

	private

	def guest_params
		params.require(:guest).permit(:name, :email, :phone, :comments) 
	end 

end
