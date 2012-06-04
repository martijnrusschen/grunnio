class Person
  include Mongoid::Document
  field :name, type: String
  field :birthdate, type: Date
  field :city, type: String
  field :country, type: String
  field :biography, type: String
  field :headline, type: String
  field :specialities, type: String

  embeds_one :address, as: :addressable

  has_and_belongs_to_many :companies
  has_and_belongs_to_many :initiatives
end
