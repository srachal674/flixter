class ImageUploader < CarrierWave::Uploader::Base

  # Include RMagick or MiniMagick support:
  # include CarrierWave::RMagick
  include CarrierWave::MiniMagick

  # Choose what kind of storage to use for this uploader:
  #storage :file
  storage :fog

  # A bunch of comments

  # Process files as they are uploaded:
  process resize_to_fill: [800, 350]
  # A bunch more comments...
end