class RoomChannel < ApplicationCable::Channel
  # 登録時の動作
  def subscribed
    stream_from 'room_channel'
  end

  # 解除時の動作
  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def speak(data)
    Message.create! content: data['message']
    puts "### INFO ### saved content: #{data}"
  end
end
