# config/initializers/carrierwave.rb

CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws'                   # required
  config.fog_public = false
  config.fog_credentials = {
    provider:              'AWS',                   # required
    aws_access_key_id:     ENV.fetch('AWS_ACCESS_KEY'),   # required
    aws_secret_access_key: ENV.fetch('AWS_SECRET_KEY'),   # required
  }

  config.fog_directory =   ENV.fetch('AWS_BUCKET')        # required
end