require_dependency "no_cms/admin/carrierwave/application_controller"

module NoCms::Admin::Carrierwave
  class AttachmentsController < ApplicationController

    before_filter :load_menu_section
    before_filter :load_attachment, only: [:edit, :update, :destroy]
    before_filter :load_attachments, only: [:index, :new, :edit]

    def new
      @attachment = NoCms::Carrierwave::Attachment.new
      @attachment.translation
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

    def update
      if @attachment.update_attributes attachment_params
        @logger.info(I18n.t('.no_cms.admin.carrierwave.attachments.update.success'), true)
        redirect_to action: :edit
      else
        @attachment.error(I18n.t('.no_cms.admin.carrierwave.attachments.update.error'))
        @attachments
        render :new
      end
    end

    def destroy
      if @attachment.destroy
        @logger.info(I18n.t('.no_cms.admin.carrierwave.attachments.destroy.success'), true)
      else
        @logger.error(I18n.t('.no_cms.admin.carrierwave.attachments.destroy.error'), true)
      end
      redirect_to attachments_path
    end

    private

    def load_menu_section
      @current_section = 'carrierwave'
    end

    def load_attachments
      @attachments = NoCms::Carrierwave::Attachment.all
    end

    def load_attachment
      @attachment = NoCms::Carrierwave::Attachment.find(params[:id])
    end

    def attachment_params
      params.require(:attachment).permit(translations_attributes: [:id, :locale, :name, :description, :attachment, :attachment_cache])
    end

  end
end
