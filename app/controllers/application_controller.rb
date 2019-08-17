class ApplicationController < ActionController::Base
  
  def redirect_home
    if smyler_logged_in?
      return redirect_to smyler_panel_path
    elsif hearo_logged_in?
      return redirect_to hearo_panel_path
    else
      return redirect_to '/'
    end
  end

  def require_logged_in
    return redirect_to(controller: 'welcome', action: 'home') unless smyler_logged_in || hearo_logged_in?
  end

  def logged_in?
    smyler_logged_in? || hearo_logged_in?
  end
  helper_method :logged_in?
  
  #smyler helper methods
  def current_smyler
    @smyler = (Smyler.find_by(id: session[:smyler_id]) || Smyler.new)
  end
  helper_method :current_smyler

  def smyler_logged_in?
    current_smyler.id != nil
  end
  helper_method :smyler_logged_in?

  #hearo helper methods
  def current_hearo
    @hearo = (Hearo.find_by(id: session[:hearo_id]) || Hearo.new)
  end
  helper_method :current_hearo

  def hearo_logged_in?
    current_hearo.id != nil
  end
  helper_method :hearo_logged_in?

end
