S3_CONFIG = HashWithIndifferentAccess.new(YAML.load(File.read(File.expand_path('../../s3.yml', __FILE__))))[Rails.env]

CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',
    :aws_access_key_id      =>  S3_CONFIG['access_key_id'],
    :aws_secret_access_key  =>  S3_CONFIG['secret_access_key'],
    :region                 =>  S3_CONFIG['region']
  }
  config.fog_directory  = S3_CONFIG['bucket']
end
