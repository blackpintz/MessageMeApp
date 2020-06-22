class MessagesController < ApplicationController
    def new
        @message = Message.new
    end
    
    def create
        @message = Message.new(msg_params)
        @message.user_id = current_user.id
        @message.save
        redirect_to root_path
    end
    
    private
    
    def msg_params
        params.require(:message).permit(:comment)
    end
end
