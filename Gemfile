source 'https://rubygems.org'

gem 'rails', '3.2.6'
gem 'capistrano'
gem 'pg'
gem 'therubyracer'

# IMHO Foreign keys should be set in the database ;)
gem 'foreigner'
gem 'immigrant'

gem 'geocoder'

gem 'jbuilder'
gem 'jquery-rails'
gem 'simple_form'
gem 'nested_form'
gem 'country_select'

gem "rocket_tag"

gem 'haml-rails'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'twitter-bootstrap-rails'
  gem 'uglifier', '>= 1.0.3'
end

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
  # gem 'mocha', git: 'git://github.com/freerange/mocha.git'

  # Replace irb with Pry
  gem 'pry-rails' #vervang IRB met pry (http://pry.github.com/); http://lucapette.com/pry/pry-everywhere/
  gem 'pry-doc'
  gem 'pry-remote'
end

group :production do
  gem 'therubyracer', :platforms => :ruby
end
