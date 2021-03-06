CarrierWave.configure do |config|

  config.fog_credentials = {
    :provider                 => "AWS",
    :region                   => "eu-west-1",
    :aws_access_key_id        => ENV['AWS_ACCESS_KEY_P4'],
    :aws_secret_access_key    => ENV['AWS_SECRET_KEY_P4']
  }

  if Rails.env.production?
    config.root = Rails.root.join('tmp')
    config.cache_dir = "#{Rails.root}/tmp/uploads"
  end

  config.fog_directory = ENV['AWS_BUCKET_NAME_P4']
end
