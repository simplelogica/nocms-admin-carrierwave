require_dependency "no_cms/admin/carrierwave/application_controller"

module NoCms::Admin::Carrierwave
  class AttachmentsController < ApplicationController

    def index
      @attachments = NoCms::Carrierwave::Attachment.all
    end

    def new
      @attachment = NoCms::Carrierwave::Attachment.new
    end

    def create
      @attachment = NoCms::Carrierwave::Attachment.new attachment_params
      if @attachment.save!
        @logger.info I18n.t('.no_cms.admin.carrierwave.attachments.create.success'), true
        redirect_to action: :index
      else
        @logger.error I18n.t('.no_cms.admin.carrierwave.attachments.create.error')
        render :new
      end
    end

    private


    def attachment_params
      params.require(:attachment).permit(translations_attributes: [:locale, :attachment, :attachment_cache])
    end

  end
end
