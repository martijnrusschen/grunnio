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
