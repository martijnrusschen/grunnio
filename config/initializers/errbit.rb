SETTINGS = YAML.load(IO.read(Rails.root.join("config", "settings.yml")))

Airbrake.configure do |config|
 config.api_key     = SETTINGS["errbit"]["token"]
 config.host        = SETTINGS["errbit"]["server"]
 config.port        = 80
 config.secure      = config.port == 443
end
