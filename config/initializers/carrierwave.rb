# require 'carrierwave/storage/fog'
#
# if Rails.env.production?
#   CarrierWave.configure do |config|
#     config.fog_provider = 'fog/aws'
#     config.fog_credentials = {
#         provider:              'AWS',
#         aws_access_key_id:     ENV['AWS_ACCESS_KEY'],
#         aws_secret_access_key: ENV['AWS_SECRET_KEY'],
#         region: ENV['S3_REGION']
#     }
#
#     config.fog_directory  = ENV['S3_BUCKET_NAME']
#   end
# end
CarrierWave.configure do |config|
  config.fog_credentials = {
      provider: 'AWS',
      aws_access_key_id: ENV['AWS_ACCESS_KEY'],
      aws_secret_access_key: ENV['AWS_SECRET_KEY'],
      region: ENV['S3_REGION']
  }

  config.fog_directory = ENV['S3_BUCKET_NAME']
  config.asset_host = 'hherokucloudd.s3-us-east-2.amazonaws.com'

end
