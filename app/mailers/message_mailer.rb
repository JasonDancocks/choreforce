class MessageMailer < ApplicationMailer
    def contact(message)
        @message = message
        mail to: "thechoreforce@gmail.com",
             from: message.email,
             subject: "New Message: #{message.name}"
    end
end
