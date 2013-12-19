class UsersController < ApplicationController

  def show
    if current_user.present?
      @user = User.find(params[:id])
    else
      redirect_to root_url, notice: "Please log in to continue"
    end
  end

  def index
    if current_user.present?
      @users = User.all
    else
    redirect_to root_url, notice: "Please log in to continue"
    end
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
