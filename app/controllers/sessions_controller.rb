class SessionsController < ApplicationController
  def new  #sign in page
  end

  def create  # it does the sign in
    @user = User.find_by(name: params[:user][:name])
    session[:user_id] = @user.id
    redirect_to user_path(@user)

  end

  def destroy  #destroys
    reset_session
    redirect_to root_path
  end



end
