class Image < ActiveRecord::Base
  include Authority::Abilities
  resourcify

  # attr_accessible :title, :body
  mount_uploader :file, ImageUploader
  belongs_to :imageable, polymorphic: true
end
