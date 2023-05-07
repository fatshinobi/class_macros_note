module Loggable
  def self.included(base)
    base.prepend(Interceptor)
    base.extend(ClassMethods)
  end

  module Interceptor
  end

  module ClassMethods
    def loggable(*methods_names)
      methods_names.each do |method_name|
        Interceptor.class_eval do
          define_method(method_name) do
            p "Log: #{method_name} logged"
            method(method_name).super_method.call
          end
        end
      end
    end
  end

end