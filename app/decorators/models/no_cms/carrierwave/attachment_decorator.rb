NoCms::Carrierwave::Attachment.class_eval do
  def is_image?
    /\.[#{NoCms::Admin::Carrierwave.image_extensions.join('|')}]/ =~ translation[:attachment]
  end
end
