class SessionsController < ApplicationController
  
  def new
  end

  def create
    redirect_home_if_logged_in
  end

  def destroy
    session.clear
    redirect_to root_path
  end

end
