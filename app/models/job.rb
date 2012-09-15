class Job < ActiveRecord::Base
  include Authority::Abilities

  attr_accessible :description, :title

  belongs_to :companies
end
