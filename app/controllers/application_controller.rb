class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  helper_method :current_user_avatar
  before_filter :store_location


  def current_user_avatar
    if current_user.profile.blank? == false
      @current_user_avatar = current_user.profile
    end
  end

  def store_location
    if session[:request_from]
      @prev_page = session[:request_from]
    end
    session[:request_from] = request.fullpath
  end
end
