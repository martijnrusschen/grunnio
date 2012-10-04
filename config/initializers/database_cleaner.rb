unless Rails.env == 'production'
  require 'database_cleaner'
  DatabaseCleaner.strategy = :truncation
end
