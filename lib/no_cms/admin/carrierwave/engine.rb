module NoCms
  module Admin
    module Carrierwave
      class Engine < ::Rails::Engine
        isolate_namespace Carrierwave
      end
    end
  end
end
