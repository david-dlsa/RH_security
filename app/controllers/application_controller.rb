class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :authenticate_adm?
  def authenticate_user!
    redirect_to '/users/sign_in' unless current_user
  end

  def authenticate_adm?
    return true if current_user && current_user.admin
  end
end
