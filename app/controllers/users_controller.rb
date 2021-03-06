class UsersController < ApplicationController
  def index

  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash.alert ="Account Created"
      redirect_to comments_new_path
    else
      render 'new'
    end
  end

  private

  def user_params
    params.require(:user).permit(:user_name, :email)
  end
end