module ErrorListFor
  module Helper

    def error_list_for(obj)
      ErrorListFor::ErrorList.new(obj).list
    end
    
  end
end