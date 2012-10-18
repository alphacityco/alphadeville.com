settings = File.expand_path('../settings.yml', __FILE__)
if File.exists?(settings)
  config = YAML.load_file(settings)
  config.fetch(Rails.env, {}).each do |key, value|
    ENV[key.upcase] = value.to_s
  end
end
