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
#  gmaps            :boolean
#  address          :string(255)
#

class Location < ActiveRecord::Base
  include Authority::Abilities

  acts_as_gmappable :lat => 'latitude', :lng => 'longitude', :process_geocoding => :geocode?,
                    :address => "full_address", :normalized_address => "address", :language => "nl", :validation => false,
                    :msg => "Sorry, not even Google could figure out where that is"

  attr_accessible :street_address,
  :extended_address,
  :postal_code,
  :city,
  :locality,
  :region,
  :country,
  :address

  belongs_to :locatable, polymorphic: true

  def full_address
    [street_address, extended_address, locality, postal_code, city, region, country].compact.join(', ')
  end

  def geocode?
    (address.present? && (latitude.blank? || longitude.blank?)) || street_address_changed?
  end

  # alias_method :gmaps4rails_address, :address
end
