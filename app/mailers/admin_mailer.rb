class AdminMailer < ActionMailer::Base
  default to: "Admin<admin@beachsiderehab.com",
  				from: "Beachside Inquiry <admin@beachsiderehab.com>"

  def inquiry_email(guest)
  	@guest=guest
  	mail(subject: "Guest Inquiry: #{guest.name} at #{guest.phone}")

  end
end
