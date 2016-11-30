require 'rails'

module ErrorListFor
  class Railtie < Rails::Railtie
    initializer "error_list_for.action_view" do
      ActiveSupport.on_load(:action_controller) do
        include ErrorListFor::Helper
      end
    end
  end
end