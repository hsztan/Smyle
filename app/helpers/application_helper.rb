module ApplicationHelper

  def dynamic_route_to_home_string
    if smyler_logged_in?
      smyler_panel_path
    elsif hearo_logged_in?
      hearo_panel_path
    else
      '/'
    end
  end
end
