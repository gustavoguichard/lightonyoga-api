# frozen_string_literal: true

class SessionsController < ApplicationController
  skip_before_action :authorize

  def log_in; end

  def create
    if params[:password] == ENV['PASSWORD']
      session[:user] = true
      redirect_to root_path, notice: 'Successfully logged in'
    else
      redirect_to login_path, notice: 'Wrong password'
    end
  end

  def destroy
    session[:user] = nil
    redirect_to root_path
  end
end
