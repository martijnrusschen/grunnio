class Job
  include Mongoid::Document

  field :title
  field :description
  # field :functie
  # field :branche
  # field :pictures

  belongs_to :companies
  has_and_belongs_to_many :tags
end
