module NoCms
  module Admin
    module Carrierwave
      class Engine < ::Rails::Engine
        isolate_namespace Carrierwave
        config.to_prepare do
          Dir.glob(NoCms::Admin::Carrierwave::Engine.root + "app/decorators/**/*_decorator*.rb").each do |c|
            require_dependency(c)
          end
        end
      end
    end
  end
end
