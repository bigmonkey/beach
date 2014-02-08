class ApplicationController < ActionController::Base

  include ApplicationHelper #include methods for mobile and tablet regex
  
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
	add_flash_types :info	
	

  protected

  # determines type of device using user agent
  # tablets_agents, mobile_agents_one, and mobile_agents_two are RegEx in ApplicationHelper
  def set_device
      # if HTTP_USER_AGENT is blank/nil defaults to blank, i.e. desktop 
      agent = request.env["HTTP_USER_AGENT"].blank? ? "" : request.env["HTTP_USER_AGENT"].downcase 
      if agent =~ tablet_agents
        "tablet"
      elsif (agent =~ mobile_agents_one) || (agent[0..3] =~ mobile_agents_two)
        "mobile"
      else
        "desktop"
      end  
  end

  private

  # Overwriting the sign_out redirect path method for Devise
  # When a user signs out they get ridirected based on this
  def after_sign_out_path_for(resource_or_scope)
    users_path
  end  
end
