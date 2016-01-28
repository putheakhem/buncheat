class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  private
  def current_user
    User.where(id: session[:user_id]).first
  end
  helper_method :current_user
  def login_required
  redirect_to ('/login') if current_user.blank?
  end

  def set_request_header
    headers['Access-Control-Allow-Origin'] = '*'
  end
  before_filter :set_request_header

end
