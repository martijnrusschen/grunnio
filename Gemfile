source 'https://rubygems.org'

gem 'rails', '3.2.6'

gem 'sqlite3'
gem 'mongoid', '~> 3.0.0'
gem 'bson_ext', '~> 1.6.2'

gem 'geocoder', git: "git://github.com/bhammond/geocoder.git"

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'therubyracer', :platform => :ruby
  gem 'uglifier', '>= 1.0.3'
  gem 'haml-rails'
  gem 'twitter-bootstrap-rails'
end

gem 'simple_form'
gem 'nested_form'
gem 'country_select'
gem 'jquery-rails'
gem 'jbuilder'
gem 'capistrano'

group :development, :test do
  gem 'database_cleaner'

  gem 'guard'
  gem 'guard-minitest'

  gem 'minitest'
  gem 'minitest-rails'
  gem 'minitest-rails-capybara' # Minispec and Capybara
  gem 'minitest-capybara' # Rspec style Capybara helpers
  gem 'turn' # Beautify Minitest output

  gem 'miniskirt' # Factories
  gem 'mocha' # Mocking and stubbing

  # Replace irb with Pry
  gem 'pry-rails' #vervang IRB met pry (http://pry.github.com/); http://lucapette.com/pry/pry-everywhere/
  gem 'pry-doc'
  gem 'pry-remote'
end
