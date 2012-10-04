# Be sure to restart your server when you modify this file.

# Your secret key for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!
# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.

# Generate your own secret token with irb(main):007:0> "#{ActiveSupport::SecureRandom.hex(64)}"

SETTINGS = YAML.load(IO.read(Rails.root.join("config", "settings.yml")))

SiliconGroningen::Application.config.secret_token = SETTINGS["rails"]["secret_token"]
