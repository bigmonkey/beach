class AdminMailer < ActionMailer::Base
  default to: "AnneMarie<annemarie@beachsiderehab.com>,Olivia<olivia@beachsiderehab.com>,Imelda<imelda@beachsiderehab.com>, Admin<admin@beachsiderehab.com>",
  				from: "Beachside Inquiry <admin@beachsiderehab.com>"

  def inquiry_email(guest, refer_url)
  	@guest=guest
  	@refer_url = refer_url
  	mail(subject: "Guest Inquiry: #{guest.name} at #{guest.phone}")

  end
end
