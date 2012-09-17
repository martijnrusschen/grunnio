class Authentication < ActiveRecord::Base
  
  # Accessibility (whitelist)
  attr_accessible :provider
  attr_accessible :uid
  
  # Associations
  belongs_to :account
  
end
