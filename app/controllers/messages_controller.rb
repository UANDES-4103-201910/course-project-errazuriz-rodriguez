class MessagesController < ApplicationController
    def index
        #Agregar links con las conversaciones a otros usuarios,
        #al ghacer click al link abrir conversacion con un nuevo def
    end
    def create
        @message = Message.new(message_params)
    end
    def conversation
        #muestra mensajes anteriores y da la posibilidad  de escribir uno nuevo
        #en caso de enviar uno nuevo, llamar a create
        
        #u1 = user_id
        #u2 = receiver_id
        #@message = Messages.where(sender_id = u1, receiver_id = u2 or sender_id = u2, receiver_id = u1).order(:created_at)
        
    end
    def message_params
        params.require(:message).permit(:sender_id, :receiver_id, :message)
    end
end
