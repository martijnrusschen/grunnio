source 'https://rubygems.org'

gem 'rails', '3.2.8'
gem 'capistrano', '2.13.3'
gem 'pg', '0.14.1'
gem 'rails-i18n', '0.6.1'

# IMHO Foreign keys should be set in the database ;)
gem 'foreigner', '1.2.1'
gem 'immigrant', '0.1.2'
gem 'activerecord-postgres-hstore', git: 'git://github.com/softa/activerecord-postgres-hstore.git'
gem 'geocoder', '1.1.3'
gem 'squeel', '1.0.9'  # Rocket tag depends on squeel, but there's a bug in squeel 1.0.11

gem 'jbuilder', '0.5.0'
gem 'blankslate', '3.1.2'
gem 'jquery-rails', '2.1.2'
gem 'simple_form', '2.0.2'
gem 'cocoon', '1.0.22'
# gem 'nested_form'
gem 'country_select', '1.0.1'
gem 'breadcrumbs_on_rails', '2.2.0'

gem 'rocket_tag', '0.5.6'
gem 'haml-rails', '0.3.4'

gem 'inherited_resources', '1.3.1'
gem 'devise', '2.1.2'
gem 'devise_invitable', '1.1.0'
gem 'authority', '2.1.0'

gem 'airbrake', '3.1.3'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'twitter-bootstrap-rails', '2.1.3'
  gem 'uglifier', '>= 1.0.3'
end

group :development, :test do
  gem 'database_cleaner', '0.8.0'
  gem 'letter_opener', '0.0.2'

  gem 'guard'
  gem 'guard-minitest'

  gem 'minitest', '3.4.0'
  gem 'minitest-rails', '0.1.3'
  gem 'minitest-rails-capybara', '0.1'
  gem 'minitest-capybara', '0.1.0'
  gem 'turn' # Beautify Minitest output

  gem 'miniskirt', '1.2'
  # gem 'mocha', git: 'git://github.com/freerange/mocha.git'

  # Replace irb with Pry
  gem 'pry-rails' #vervang IRB met pry (http://pry.github.com/); http://lucapette.com/pry/pry-everywhere/
  gem 'pry-doc'
  gem 'pry-remote'
end

group :production do
  gem 'therubyracer', :platforms => :ruby
end
