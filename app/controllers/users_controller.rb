class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    user_attrs = params[:user]
    @user.update(name: user_attrs[:name],
      email: user_attrs[:email],
      mobile_number: user_attrs[:mobile_number])
    redirect_to users_path
  end
end
