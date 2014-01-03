class AdminMailer < ActionMailer::Base
  default to: "Admissions<admissions@beachsiderehab.com>,AnneMarie<annemarie@beachsiderehab.com>,Olivia<olivia@beachsiderehab.com>,Imelda<imelda@beachsiderehab.com>, Admin<admin@beachsiderehab.com",
  				from: "Beachside Inquiry <admin@beachsiderehab.com>"

  def inquiry_email(guest)
  	@guest=guest
  	mail(subject: "Guest Inquiry: #{guest.name} at #{guest.phone}")

  end
end
