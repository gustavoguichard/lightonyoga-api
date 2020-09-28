# frozen_string_literal: true

class SessionsController < ApplicationController
  skip_before_action :authorize

  def log_in; end

  def create
    if params[:password] == ENV['PASSWORD']
      session[:user] = true
      redirect_to root_path, notice: 'Login feito com sucesso.'
    else
      redirect_to login_path, notice: 'Senha incorreta.'
    end
  end

  def destroy
    session[:user] = nil
    redirect_to root_path, notice: 'Logout feito com sucesso.'
  end
end
