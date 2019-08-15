module ApplicationHelper

  def dynamic_route_to_home_string
    if smyler_logged_in?
      smyler_path(current_smyler)
    elsif hearo_logged_in?
      hearo_path(current_hearo)
    else
      '/'
    end
  end
end
