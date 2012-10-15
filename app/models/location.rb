# == Schema Information
#
# Table name: locations
#
#  id               :integer          not null, primary key
#  street_address   :string(255)
#  extended_address :string(255)
#  postal_code      :string(255)
#  city             :string(255)
#  locality         :string(255)
#  region           :string(255)
#  country          :string(255)
#  latitude         :float
#  longitude        :float
#  locatable_id     :integer
#  locatable_type   :string(255)
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class Location < ActiveRecord::Base
  include Authority::Abilities

  attr_accessible :street_address,
  :extended_address,
  :postal_code,
  :city,
  :locality,
  :region,
  :country

  geocoded_by :address
  after_validation :geocode

  belongs_to :locatable, polymorphic: true

  def address
    [street_address, extended_address, locality, postal_code, city, region, country].compact.join(', ')
  end
end
