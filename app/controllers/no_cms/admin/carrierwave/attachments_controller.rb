require_dependency "no_cms/admin/carrierwave/application_controller"

module NoCms::Admin::Carrierwave
  class AttachmentsController < ApplicationController

    def new
      @attachment = NoCms::Carrierwave::Attachment.new
    end
  end
end
