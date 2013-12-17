class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  def index
   @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to user_path, :notice => "Signed up!"
    else
      render "new"
    end
  end

end
