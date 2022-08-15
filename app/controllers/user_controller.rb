class UserController < ApplicationController
  before_action :set_user, only: %i[show edit update destroy]
  def index
    @users = User.all
  end

  def show
    puts params
  end
end
