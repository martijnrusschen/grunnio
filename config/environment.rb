# Load the rails application
require File.expand_path('../application', __FILE__)

ENV['PATH'] = "#{ENV['PATH']}:/usr/local/bin/:/usr/bin"

# Initialize the rails application
SiliconGroningen::Application.initialize!
