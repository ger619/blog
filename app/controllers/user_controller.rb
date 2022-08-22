class UserController < ApplicationController
  def index
    @users = User.includes(:posts).all
  end

  def show
    @users = User.all
    @user = User.find(params[:id])
  end

  def current_user
    @user = User.find(params[:id])
  end
end
