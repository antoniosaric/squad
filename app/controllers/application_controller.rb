class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session

  def after_sign_in_path_for(resource)
    user_path(current_user) || request.env['omniauth.origin'] || stored_location_for(resource)
  end
end
