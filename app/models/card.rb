class Card < ActiveRecord::Base
  include Authority::Abilities
  resourcify

  attr_accessible :general_email_address,
                  :phone,
                  :twitter_username,
                  :website_url

  belongs_to :cardable, polymorphic: true

  validates :general_email_address, length: { maximum: 255 }, allow_nil: true
  validates :phone, numericality: { only_integer: true }, allow_blank: true
  validates :twitter_username, length: { maximum: 15 }, allow_nil: true
  # validates :website_url


end
