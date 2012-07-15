class Company
  include Mongoid::Document

  field :name
  field :type # product of service
  field :description
  field :category # (SP) Wordt dit een keuzelijst?
  field :founded_in
  field :number_of_employees, type: Integer
  field :kvk_number

  embeds_one :card, as: :cardable
  has_many :milestones
  has_many :jobs
  has_and_belongs_to_many :people
  has_and_belongs_to_many :tags
end
