class ChatsController < ApplicationController

  def hello_world
    Pusher['test_channel'].trigger('my_event', {
      message: 'hello world'
    })
  end

end
