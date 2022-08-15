class UserPostController < ApplicationController
  def index
    @user_posts = User.find(params[:user_id]).posts
  end

  def show
    @user_post = User.find(params[:user_id]).posts.find(params[:id])
  end
end
