class SessionsController < ApplicationController

  def new
    @user = User.new
  end


  def create
    user = User.find_by(name: params[:user][:name])
    if user && user.authenticate(params[:user][:password])
      session_in!(user)
      redirect_to root_path
    else
      redirect_to new_session_path
    end
  end

  def destroy
    session_out!
    redirect_to root_path
  end

end
