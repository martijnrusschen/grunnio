class Person < ActiveRecord::Base
  attr_accessible :biography,
                  :birthdate,
                  :headline,
                  :name,
                  :specialities,
                  :card_attributes

  has_one :card, as: :cardable

  has_and_belongs_to_many :companies
  has_and_belongs_to_many :initiatives

  accepts_nested_attributes_for :card

end

# TODO: Personen alleen via bedrijf en/of initiatief toevoegen
