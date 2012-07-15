class Initiative
  include Mongoid::Document

  field :name

  embeds_one :card, as: :cardable
  has_one :location, as: :locatable
  has_many :activities
  has_and_belongs_to_many :people
  has_and_belongs_to_many :tags

end
