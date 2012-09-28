class Image < ActiveRecord::Base
  include Authority::Abilities
  resourcify

  attr_accessible :description

  mount_uploader :image, ImageUploader
  belongs_to :imageable, polymorphic: true
end
