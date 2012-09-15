class Product < ActiveRecord::Base
  include Authority::Abilities

  attr_accessible :description,
                  :market_date,
                  :name,
                  :website_url

  belongs_to :productable, polymorphic: true
end
