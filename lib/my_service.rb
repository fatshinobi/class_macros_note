require './lib/loggable'

class MyService
  include Loggable
  loggable :second_method, :third_method

  def first_method
    p 'first_method called'
  end

  def second_method
    p 'second_method called'
  end

  def third_method
    p 'third_method called'
  end
end