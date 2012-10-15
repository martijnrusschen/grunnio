# == Schema Information
#
# Table name: products
#
#  id               :integer          not null, primary key
#  name             :string(255)
#  description      :text
#  website_url      :string(255)
#  market_date      :date
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  productable_id   :integer
#  productable_type :string(255)
#

class Product < ActiveRecord::Base
  include Authority::Abilities
  resourcify

  attr_accessible :description,
                  :market_date,
                  :name,
                  :website_url

  belongs_to :productable, polymorphic: true
end
