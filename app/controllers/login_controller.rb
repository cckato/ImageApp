class LoginController < ApplicationController
  def index
    @users = User.all
  end

  def enter
    session[:login_id] = login_params[:id]
    redirect_to controller: 'users', action: 'index'
  end

  def exit
    session[:login_id] = nil
    redirect_to action: 'index'
  end

  private
    def login_params
      params.require(:login).permit(:id)
    end
end
