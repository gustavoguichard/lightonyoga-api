class ApplicationController < ActionController::Base
  before_action :authorize, except: %i[index show]
  helper_method :logged_in

  def logged_in
    session[:user].present?
  end

  private

  def authorize
    redirect_to login_url, notice: 'Por favor faça seu login' unless logged_in
  end
end
