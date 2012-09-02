class Initiative < ActiveRecord::Base
  attr_accessible :name,
  :card_attributes,
  :location_attributes

  has_one :card, as: :cardable
  has_one :location, as: :locatable
  has_many :products, as: :productable
  has_and_belongs_to_many :people

  accepts_nested_attributes_for :card, :location, :products

  attr_taggable :categories

end

# Clubje
# TODO: Events toevoegen --> ook koppelen met bedrijven
# --> Agenda
