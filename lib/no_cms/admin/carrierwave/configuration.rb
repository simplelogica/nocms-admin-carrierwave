module NoCms
  module Admin
    module Carrierwave
      include ActiveSupport::Configurable

      config_accessor :image_extensions

      self.image_extensions = ['jpg', 'png', 'gif', 'bmp']

    end
  end
end
