## MINITEST TEST LOCATIONS (http://blowmage.com/2012/07/10/announcing-minitest-rails)
##
##              Test::Unit                                 MiniTest::Rails
## Models       test/unit/widget_test.rb                   test/models/widget_test.rb
## Helpers      test/unit/helpers/widget_helper_test.rb    test/helpers/widget_helper_test.rb
## Controller   test/functional/widgets_controller_test.rb test/controllers/widgets_controller_test.rb
## Mailer       test/functional/notifications_test.rb      test/mailers/notifications_test.rb
## Acceptance   test/integration/user_can_login_test.rb    test/acceptance/user_can_login_test.rb

ENV["RAILS_ENV"] = "test"
require File.expand_path('../../config/environment', __FILE__)

require "minitest/rails"
require 'minitest/autorun'
require "minitest/rails/capybara"
require 'miniskirt'
require "factories" # If you define your factories in test/factories.rb
# require 'mocha'
require 'turn'

class MiniTest::Rails::ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.(yml|csv) for all tests in alphabetical order.
  # fixtures :all

  # Add more helper methods to be used by all tests here...
end

# Extends the class provided by the minitest-rails gem
class MiniTest::Rails::ActionDispatch::IntegrationTest
  # include Capybara::RSpecMatchers
end

MiniTest::Rails.override_testunit!

# Support files
# Dir["#{File.expand_path(File.dirname(__FILE__))}/support/*.rb"].each do |file|
#   require file
# end


Turn.config do |c|
  # use one of output formats:
  # :outline  - turn's original case/test outline mode [default]
  # :progress - indicates progress with progress bar
  # :dotted   - test/unit's traditional dot-progress mode
  # :pretty   - new pretty reporter
  # :marshal  - dump output as YAML (normal run mode only)
  # :cue      - interactive testing
  c.format  = :pretty
  # turn on invoke/execute tracing, enable full backtrace
  c.trace   = false
  # use humanized test names (works only with :outline format)
  c.natural = true
end
