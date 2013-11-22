class RegistrationsController < ApplicationController
  def new
    redirect_to new_user_session_path, info: "To sign up a new Admin email Con Way"
    
  end

  def create
    redirect_to new_user_session_path, info: "To sign up a new Admin email Con Way"
    
  end
end