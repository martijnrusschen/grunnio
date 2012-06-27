class Initiative
  include Mongoid::Document
  field :name, type: String
  field :city, type: String
  field :url, type: String

  has_and_belongs_to_many :people
  embeds_one :address, as: :addressable
end
