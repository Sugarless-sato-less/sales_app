class SessionsController < ApplicationController
  include SessionsHelper
  def new
  end

  def create
    user = User.find_by(name: params[:session][:name])
    if user &.authenticate(params[:session][:password])
      log_in user
      redirect_to root_path
    else
      flash.now[:danger] = '名前、またはパスワードが違います'
      render 'new'
    end
  end

  def destroy
    log_out
    redirect_to login_path
  end
end
