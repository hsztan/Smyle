class ApplicationController < ActionController::Base

  
  def require_logged_in
    return redirect_to(controller: 'welcome', action: 'home') unless smyler_logged_in || hearo_logged_in?
  end

  #smyler helper methods
  def current_smyler
    @smyler = (Smyler.find_by(id: session[:smyler_id]) || Smyler.new)
  end

  def smyler_logged_in?
    current_smyler.id != nil
  end

  #hearo helper methods
  def current_smyler
    @hearo = (Hearo.find_by(id: session[:hearo_id]) || Hearo.new)
  end

  def hearo_logged_in?
    current_hearo.id != nil
  end

end
