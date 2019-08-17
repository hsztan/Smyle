class SmylersController < ApplicationController
  def show
    @smyler = current_smyler
  end

  def panel
    redirect_home if !smyler_logged_in?
    @smyler = current_smyler
  end

  def new
    redirect_home if smyler_logged_in?
    @smyler = current_smyler
  end

  def create
    if auth
      @smyler = Smyler.find_or_create_by(uid: auth['uid']) do |u|
        u.first_name = auth['info']['name']
        u.email = auth['info']['email']
        u.image = auth['info']['image']
        u.password = "FACEBOOK"  #TODO Find a secure method to use bcrypt in this case
      end
      session[:smyler_id] = @smyler.id
      redirect_to smyler_panel_path
    else
      @smyler = Smyler.new(smyler_params)
      if @smyler.save
        session['smyler_id'] = @smyler.id
        redirect_to smyler_panel_path
      else
        render :new
      end
    end
  end

  def edit
    redirect_home if !smyler_logged_in?
    @smyler = current_smyler
  end

  def update
    @smyler = current_smyler
    if @smyler.update (smyler_params)
      return redirect_to smyler_panel_path
    end
    render :edit
  end

  private
 
  def auth
    request.env['omniauth.auth']
  end

  def smyler_params
    params.require(:smyler).permit(:gender_id, :username, :email, :password, :password_confirmation, :first_name, :last_name, :middle_name, :dob)
  end
end
