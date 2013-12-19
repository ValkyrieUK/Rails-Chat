class MessagesController < ApplicationController
  def index
    @messages = Message.all
  end

  def create
    @message = Message.create!(params[:message])
    PrivatePub.publish_to("/messages/new", message: @message)

    @message.user_username = current_user.username
    flash[:error] = "something went wrong" unless @message.save
  end
end
