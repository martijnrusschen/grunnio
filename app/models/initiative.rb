# == Schema Information
#
# Table name: initiatives
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  description :text
#

class Initiative < ActiveRecord::Base
  include Authority::Abilities
  resourcify
  is_sluggable :name
  scope :published, where(published: true)

  # naam
  # categorie
  # beschijving
  # agenda
  # url
  # personen

  attr_accessible :name,
  :description,
  :logo,
  :logo_cache,
  :card_attributes,
  :products_attributes,
  :location_attributes,
  :person_ids,
  :published

  has_one :card, as: :cardable
  has_one :location, as: :locatable
  has_many :products, as: :productable
  has_and_belongs_to_many :people

  mount_uploader :logo, ImageUploader

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
