# config/initializers/carrierwave.rb

CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws'                        # required
  config.fog_credentials = {
    provider:              'AWS',                        # required
    aws_access_key_id:     ENV[AKIAISEFZBDVIRTZM7WQ],   # required
    aws_secret_access_key: ENV[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],        # required
  }
  config.fog_directory  = ENV[glickman-elyse-user]              # required
end