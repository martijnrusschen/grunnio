class Initiative
  include Mongoid::Document
  field :name, type: String
  field :city, type: String
  field :url, type: String

  embeds_one :address, as: :addressable
end
