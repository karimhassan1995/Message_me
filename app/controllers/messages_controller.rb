class MessagesController < ApplicationController

    before_action :require_user

    
    def create
        @message = current_user.messages.build(message_params)
        if @message.save
            ActionCable.server.broadcast "chatroom_channel",
                                          msg: @message.body,
                                          username: current_user.username
        end
    end

    private

    def message_params
        params.require(:message).permit(:body)
    end
end