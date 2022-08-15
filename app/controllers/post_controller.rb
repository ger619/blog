class PostController < ApplicationController
  def index
    @post = User.find(params[:user_id]).post
  end

  def show
    @post = User.find(params[:user_id]).post.find(params[:id])
  end
end
