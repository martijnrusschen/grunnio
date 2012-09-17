class Authentication < ActiveRecord::Base
  
  # Accessibility (whitelist)
  attr_accessible :provider
  attr_accessible :uid
  
  # Associations
  belongs_to :account
  
  # Callbacks
  after_create do |authentication|
    Person.create_from_omniauth authentication.omniauth
  end
  
  # Serialize
  serialize :omniauth
  
end
