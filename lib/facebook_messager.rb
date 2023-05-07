require './lib/sociable'

class FacebookMessager
  include Sociable
  sociable_channel 'facebook'
end