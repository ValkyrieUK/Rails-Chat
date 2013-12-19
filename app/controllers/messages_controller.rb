class MessagesController < ApplicationController
  def index
  	if current_user.present?
	    @messages = Message.all
  	else
  	redirect_to root_url, notice: "Please log in to continue"
	end
  end

  def create
    @message = Message.create!(params[:message])
    PrivatePub.publish_to("/messages/new", message: @message)

    @message.user_username = current_user.username
    flash[:error] = "something went wrong" unless @message.save
  end
end
