class UsersController < ApplicationController
  def create
    @user = User.create(params[:user])
    redirect_to user_url(@user)
  end

  def new
    @user = User.new
    @friends = current_user.friends
  end

  def show
    @user = User.find(params[:id])
    @tags = Tag.all
  end

  def index
    @users = User.all
  end

end
