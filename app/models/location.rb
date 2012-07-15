class Location
  include Mongoid::Document
  include Geocoder::Model::Mongoid

  geocoded_by :address
  after_validation :geocode

  field :street_address
  field :extended_address
  field :postal_code
  field :city
  field :locality
  field :region
  field :country
  field :coordinates, type: Array

  belongs_to :locatable, polymorphic: true

  def address
    [street_address, extended_address, locality, postal_code, city, region, country].compact.join(', ')
  end

end
