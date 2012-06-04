class Address
  include Mongoid::Document
  # include Mongoid::Versioning
  # include Mongoid::Timestamps
  # include Geocoder::Model::Mongoid
  
  field :street_address, type: String
  field :extended_address, type: String
  field :postal_code, type: String
  field :city, type: String
  field :locality, type: String
  field :region, type: String
  field :country, type: String
  field :coordinates, type: Array

  embedded_in :addressable, polymorphic: true

  def full_address
    [street_address, extended_address, locality, postal_code, city, region, country].compact.join(', ')
  end

end
