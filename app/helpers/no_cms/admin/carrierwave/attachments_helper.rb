module NoCms::Admin::Carrierwave
  module AttachmentsHelper

    def attachment_listing_item_classes attachment, current_attachment = nil
      classes = []
      classes << 'current' if current_attachment == attachment
      classes
    end

  end
end
