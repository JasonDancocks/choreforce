class MessagesController < ApplicationController
   
    def create
        @message = Message.new(message_params)
        
        if @message.valid?
            MessageMailer.contact(@message).deliver_now
            redirect_to root_path
        else
            render :new
        end
            
    end

    private
    

    def message_params
        params.require(:message).permit(:name,:email,:body)
    end
    
end