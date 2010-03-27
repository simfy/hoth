module Hoth
  class Service
    attr_accessor :name, :params_arity, :return_value, :module, :endpoint
    
    def initialize(name, &block)
      @name         = name
      @params_arity = block.arity
      instance_eval(&block)
    end
    
    def returns(return_value)
      @return_value = return_value
    end
    
    def transport
      @transport ||= "hoth/transport/#{endpoint.transport_type}_transport".camelize.constantize.new(self)
    end
    
    def impl_class
      @impl_class_name ||= "#{self.name.to_s.camelize}Impl"
      # in Rails development environment we cannot cache the class constant, because it gets unloaded, so you get 
      # an "A copy of xxxImpl has been removed from the module tree but is still active!" error from ActiveSupport dependency mechanism
      # TODO: Try to solve this problem
      # TODO: get rid of these Rails dependencies
      begin
        @impl_class_name.constantize
      rescue NameError => e
        # no local implementation
        false
      end
    end
    
    def is_local?
      !!impl_class
    end
    
    def execute(*args)
      if self.is_local?
        decoded_params = transport.decode_params(*args)
        result = impl_class.send(:execute, *decoded_params)
        return return_value ? result : nil
      else
        transport.call_remote_with(*args)
      end
    end
  end
end