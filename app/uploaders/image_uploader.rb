class ImageUploader < CarrierWave::Uploader::Base
  RESIZE_SIZE = 150

  include CarrierWave::MiniMagick

  storage :file

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  version :thumb do
    process resize_to_fit: [RESIZE_SIZE, nil]
  end

  def size_range
    0..10.megabytes
  end

  def extension_whitelist
    %w[jpg png]
  end
end
