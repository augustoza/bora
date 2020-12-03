class ChatroomsController < ApplicationController
  def show
    @chatroom = Chatroom.find(params[:id])
    @activity = Activity.find(@chatroom.activity_id)
    @message = Message.new
  end
end
