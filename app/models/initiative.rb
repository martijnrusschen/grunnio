class Initiative < ActiveRecord::Base
  include Authority::Abilities
  resourcify

  # naam
  # categorie
  # beschijving
  # agenda
  # url
  # personen

  attr_accessible :name,
  :card_attributes,
  :products_attributes,
  :location_attributes

  has_one :card, as: :cardable
  has_one :location, as: :locatable
  has_many :products, as: :productable
  has_and_belongs_to_many :people

  accepts_nested_attributes_for :card, update_only: true
  accepts_nested_attributes_for :location, update_only: true
  accepts_nested_attributes_for :products, reject_if: :all_blank, allow_destroy: true

  attr_taggable :categories
  # Design
  # Development
  # Consultancy
  # Full service
  # Product
  # Overig

end

# Clubje
# TODO: Events toevoegen --> ook koppelen met bedrijven
# --> Agenda
