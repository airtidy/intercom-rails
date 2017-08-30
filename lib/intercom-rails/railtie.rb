module IntercomRails
  class Railtie < Rails::Railtie
    initializer "intercom-rails" do |app|
      ActiveSupport.on_load :action_view do
        include ScriptTagHelper
      end
      ActiveSupport.on_load :action_controller do
        include CustomDataHelper
        include AutoInclude::Method

      end
    end
  end
end
