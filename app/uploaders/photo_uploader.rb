# encoding: utf-8

class PhotoUploader < CarrierWave::Uploader::Base

  storage :file

  # Don't touch this!
  # (unless a config file is implemented)
  def store_dir
    "system/photos/original"
  end

  # Provide a default URL as a default if there hasn't been a file uploaded
  #     def default_url
  #       "/images/fallback/" + [version_name, "default.png"].compact.join('_')
  #     end

  # Process files as they are uploaded.
  #     process :scale => [200, 300]
  #
  #     def scale(width, height)
  #       # do something
  #     end

  # Create different versions of your uploaded files
  #     version :thumb do
  #       process :scale => [50, 50]
  #     end

  # Add a white list of extensions which are allowed to be uploaded,
  # for images you might use something like this:
  def extension_white_list
    %w(jpg jpeg gif png)
  end

  # Override the filename of the uploaded files
  def filename
    "#{Time.now.to_i}.#{original_filename}" if original_filename
  end

end
