module ErrorListFor
  class ErrorList
    attr_reader :errors
    
    def initialize(invalid_object)
      @errors = invalid_object.errors
    end
    
    
    def list
      return nil if @errors.none?
      @errors.full_messages.to_sentence
    end
    
  end
end