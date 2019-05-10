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
        
        @u1 = 1#por mientras
        u2 = @selected_chat
        @message = Messages.all.where(sender_id = u1, receiver_id = u2 or sender_id = u2, receiver_id = u1).order(:created_at)
        
    end

    def chats
        #mustra los chats que se han realizado con otros usuarios
        @selected_chat = 2
        chats = Messages.all.where(sender_id = @u1 or receiver_id = @u1)
        @u3 = []
        chats.each do |ch|
            if ((ch.sender_id != @u1) and (!(ch.sender_id.in?(chats))))
                @u3.push(ch.sender_id)
            elsif (ch.receiver_id != @u1) and !(ch.receiver_id.in?(chats))
                @u3.push(ch.receiver_id)
            end
        #en el view hacer bucle sobre chats, clickeables mostrando el nombre
    end

    def new
        #crea y muestra la vista de un nuevo mensaje

    end
    def message_params
        params.require(:message).permit(:sender_id, :receiver_id, :message)
    end
end
