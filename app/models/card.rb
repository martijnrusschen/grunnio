class Card
  include Mongoid::Document

  field :phone
  field :general_email_address
  field :website_url
  field :twitter_handle

  embedded_in :cardable, polymorphic: true
end
