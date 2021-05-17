class UsersController < ApplicationController
  def index

  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    redirect_to comments_new_path
  end

  private

  def user_params
    params.require(:user).permit(:user_name, :email)
  end
end