require './lib/sociable'

class TwitterMessager
  include Sociable
  sociable_channel 'twitter'
end