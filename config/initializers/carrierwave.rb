# config/initializers/carrierwave.rb

CarrierWave.configure do |config|
  config.storage      = :aws                       # required
  config.aws_bucket   = ENV["AWS_BUCKET"]   
  config.aws_acl      = "public-read"
  
  config.aws_credentials = {
    aws_access_key_id:     ENV["AWS_ACCESS_KEY"],        # required
    aws_secret_access_key: ENV["AWS_SECRET_KEY"],        # required
    region:                ENV["AWS_REGION"]
    
  }
end

#CarrierWave.configure do |config|
  #config.fog_provider = 'fog/aws'                        # required
  #config.fog_credentials = {
    #provider:              'AWS',                        # required
    #aws_access_key_id:     ENV[AKIAJHGCWX6VL5IIFQSQ],   # required
    #aws_secret_access_key: ENV[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],        # required
 #}
  #config.fog_directory  = ENV[glickman-elyse-user]              # required
#end