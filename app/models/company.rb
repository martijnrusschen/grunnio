class Company < ActiveRecord::Base
  attr_accessible :description,
  :founded_in,
  :kvk_number,
  :name,
  :number_of_employees,
  :card_attributes,
  :location_attributes,
  :categories

  has_one :card, as: :cardable
  has_one :location, as: :locatable
  has_many :jobs
  has_and_belongs_to_many :people

  accepts_nested_attributes_for :card, :location

  attr_taggable :categories

  validates :name, length: { maximum: 255 }, presence: true
  validates :founded_in, numericality: { only_integer: true }, length: { is: 4 }, allow_nil: true
  validates :kvk_number, length: { is: 8 }, numericality: { only_integer: true }, allow_nil: true
  validates :number_of_employees, numericality: { only_integer: true }, allow_nil: true

  # TODO Category: tagging
  # design, development, services, product, consultancy - een per bedrijf
  # Producten toevoegen als model

def self.popular_tags_list
  Company.popular_tags.collect(&:name)
end

end
