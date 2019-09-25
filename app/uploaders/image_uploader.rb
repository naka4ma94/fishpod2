class ImageUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick
  process resize_to_fill: [1536, 2048, "Center"]

  process :fix_exif_rotation_and_strip_exif

  def fix_exif_rotation_and_strip_exif
    manipulate! do |img|
      img.auto_orient!
      img.strip!
      img = yield(img) if block_given?
      img
    end
  end

  if Rails.env.production?
    storage :fog
  else
    storage :file
  end

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  def extension_whitelist
    %w(jpg jpeg gif png)
  end
end
