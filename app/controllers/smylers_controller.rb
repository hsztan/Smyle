class SmylersController < ApplicationController
  def show
    @smyler = current_smyler
  end

  def create
    if auth
      @smyler = Smyler.find_or_create_by(uid: auth['uid']) do |u|
        u.name = auth['info']['name']
        u.email = auth['info']['email']
        u.image = auth['info']['image']
        u.password = "FACEBOOK"  #TODO Find a secure method to use bcrypt in this case
      end
      session[:smyler_id] = @smyler.id
      redirect_to smyler_path(@smyler)
    else
      #create manually and login
    end
  end

  private
 
  def auth
    request.env['omniauth.auth']
  end
end
