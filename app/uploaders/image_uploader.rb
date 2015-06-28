# encoding: utf-8

class ImageUploader < CarrierWave::Uploader::Base

   include CarrierWave::MiniMagick

  # Choose what kind of storage to use for this uploader:
  storage :aws
 

  def store_dir
  "#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end
 
  version :thumb do
    process :resize_to_fit => [320, 240]
  end
end