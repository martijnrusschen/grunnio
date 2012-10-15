# == Schema Information
#
# Table name: images
#
#  id             :integer          not null, primary key
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  image          :string(255)
#  description    :text
#  imageable_id   :integer
#  imageable_type :string(255)
#

class Image < ActiveRecord::Base
  include Authority::Abilities
  resourcify

  attr_accessible :description

  mount_uploader :image, ImageUploader
  belongs_to :imageable, polymorphic: true
end
