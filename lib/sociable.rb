module Sociable
  def self.included(base)
    base.extend ClassMethods
  end

  module ClassMethods
    @channel = ''

    def sociable_channel(channel)
      @channel = channel
    end

    def channel
      @channel
    end
  end

  def send_message(message)
    p "send to #{self.class.channel}: #{message}"
  end

end