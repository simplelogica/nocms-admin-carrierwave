NoCms::Carrierwave.configure do |config|

  # When using AWS we may save S3 requests to check if a file is an image just by looking at the file extension.
  # If you are using additional extension, please include them in the following array
  # config.image_extensions = ['jpg', 'png', 'gif', 'bmp']
  # Instead of overwriting you could just add the new ones
  # config.image_extensions << 'tiff'

end
