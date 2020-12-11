include CloudinaryHelper

class MessagesController < ApplicationController
  def create
    @chatroom = Chatroom.find(params[:chatroom_id])
    @message = Message.new(message_params)
    @message.chatroom = @chatroom
    @message.user = current_user
    if @message.save
      ChatroomChannel.broadcast_to(
        @chatroom,
        {
          user_id: current_user.id,
          name: @message.user.username,
          message_id: @message.id,
          time: @message.created_at.strftime("%b %e at %l:%M%p"),
          photo: @message.user.photo.attached? ? cl_image_path(@message.user.photo.key) : placeholder_url,
          content: @message.content
        }
    )
      redirect_to chatroom_path(@chatroom, anchor: "message-#{@message.id}")
    else
      render "chatrooms/show"
    end
  end

  private

  def placeholder_url
    "https://www.dovercourt.org/wp-content/uploads/2019/11/610-6104451_image-placeholder-png-user-profile-placeholder-image-png-286x300.jpg"
  end

  def message_params
    params.require(:message).permit(:content)
  end
end
