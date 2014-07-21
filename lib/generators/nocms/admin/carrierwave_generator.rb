module NoCms
  module Admin
    class CarrierwaveGenerator < Rails::Generators::Base

      source_root File.expand_path("../templates/", __FILE__)

      def generate_nocms_admin_carrierwave_initializer
        template "config/initializers/nocms/admin/carrierwave.rb", File.join(destination_root, "config", "initializers", "nocms", "admin", "carrierwave.rb")
      end

      def self.namespace
        "nocms:admin:carrierwave"
      end

    end
  end
end
