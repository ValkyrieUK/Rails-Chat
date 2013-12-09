class UsersController < ApplicationController

def logged_in
  if current_user 
    redirect_to log_out_path
  end
end

def new
  @user = User.new
end

def create
  @user = User.new(params[:user])
  if @user.save
    redirect_to root_url, :notice => "Signed up!"
  else
    render "new"
  end
end

end
