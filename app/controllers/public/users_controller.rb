class Public::UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    @user = current_user
  end

  def destroy
    @user = current_user
    @user.destroy
    flash[:notice] = "ご利用ありがとうございました。"
    redirect_to root_path
  end
end
