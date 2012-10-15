# == Schema Information
#
# Table name: jobs
#
#  id          :integer          not null, primary key
#  title       :string(255)
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  company_id  :integer
#

class Job < ActiveRecord::Base
  include Authority::Abilities
  resourcify

  attr_accessible :description, :title

  belongs_to :companies
end
