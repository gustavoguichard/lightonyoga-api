class ApplicationController < ActionController::Base
  before_action :authorize, except: %i[index show]
  helper_method :logged_in

  def logged_in
    session[:user].present?
  end

  private

  def authorize
    redirect_to login_url, notice: 'Please log in' unless logged_in
  end
end
