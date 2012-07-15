class Tag
  include Mongoid::Document

  field :name

  has_and_belongs_to_many :companies
  has_and_belongs_to_many :people
  has_and_belongs_to_many :jobs
  has_and_belongs_to_many :initiatives
end
