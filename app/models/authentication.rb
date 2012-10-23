# == Schema Information
#
# Table name: authentications
#
#  id         :integer          not null, primary key
#  account_id :integer
#  provider   :string(255)
#  uid        :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  omniauth   :text
#

class Authentication < ActiveRecord::Base

  # Accessibility (whitelist)
  attr_accessible :provider
  attr_accessible :uid

  # Associations
  belongs_to :account

  # # Callbacks
  # after_create do |authentication|
  #   person = Person.create_from_omniauth authentication.omniauth
  #   person.update_attribute(:account, authentication.account)
  # end

  # Serialize
  serialize :omniauth

end
