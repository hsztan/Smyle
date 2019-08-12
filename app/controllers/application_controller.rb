class ApplicationController < ActionController::Base

  def current_smyler
    @smyler = (Smyler.find_by(id: session[:smyler_id]) || Smyler.new)
  end

  def smyler_logged_in?
    current_smyler.id != nil
  end

  def require_logged_in
    return redirect_to(controller: 'welcome', action: 'home') unless smyler_logged_in?
  end
end
