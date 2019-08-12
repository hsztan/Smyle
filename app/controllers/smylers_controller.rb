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
      end
      session[:smyler_id] = @smyler.id
      redirect_to: @smyler
    else
      #create manually and login
    end
  end

  private
 
  def auth
    request.env['omniauth.auth']
  end
end
