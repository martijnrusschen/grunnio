source 'https://rubygems.org'

gem 'rails', '3.2.6'
gem 'capistrano'
gem 'pg'
gem 'therubyracer'
gem 'rails-i18n'

# IMHO Foreign keys should be set in the database ;)
gem 'foreigner'
gem 'immigrant'
gem 'geocoder'

gem 'jbuilder'
gem 'jquery-rails'
gem 'simple_form'
gem 'cocoon'
# gem 'nested_form'
gem 'country_select'
gem 'breadcrumbs_on_rails'

gem 'rocket_tag'
gem 'haml-rails'

gem 'inherited_resources'

gem 'exception_notification'


# Authentication
gem 'devise'
gem 'devise_invitable'
gem 'omniauth'
gem 'omniauth-facebook'
gem 'omniauth-github'
gem 'omniauth-linkedin'
gem 'omniauth-twitter'


gem 'airbrake'

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
  gem 'letter_opener'

  gem 'guard'
  gem 'guard-minitest'
  gem 'guard-bundler'
  gem 'guard-pow'
  gem 'terminal-notifier' # Notifier for Mountain Lion
  gem 'rb-fsevent', '~> 0.9.1'

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
