class Company
  include Mongoid::Document
  field :name, type: String
  field :city, type: String
  field :url, type: String

  has_and_belongs_to_many :persons
  embeds_one :address, as: :addressable
end
