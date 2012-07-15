class Person
  include Mongoid::Document

  field :name
  field :headline

  field :specialities # Basically the same as tags? Or maybe more specific for job postings?

  field :birthdate, type: Date
  field :biography

  embeds_one :card, as: :cardable
  has_and_belongs_to_many :companies
  has_and_belongs_to_many :initiatives
  has_and_belongs_to_many :tags
end
