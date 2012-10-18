Recaptcha.configure do |config|
  config.public_key  = ENV['RC_PUBLIC_KEY']
  config.private_key = ENV['RC_PRIVATE_KEY']
end
