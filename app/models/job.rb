class Job < ActiveRecord::Base
  include Authority::Abilities
  resourcify

  attr_accessible :description, :title

  belongs_to :companies
end
