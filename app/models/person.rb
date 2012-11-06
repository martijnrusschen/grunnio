# == Schema Information
#
# Table name: people
#
#  id           :integer          not null, primary key
#  name         :string(255)
#  headline     :string(255)
#  specialities :string(255)
#  birthdate    :date
#  biography    :text
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  account_id   :integer
#

class Person < ActiveRecord::Base
  include Authority::Abilities
  resourcify
  is_sluggable :name
  scope :published, where(published: true)

  attr_accessible :biography,
                  :birthdate,
                  :headline,
                  :name,
                  :avatar,
                  :avatar_cache,
                  :specialities,
                  :card_attributes,
                  :company_ids,
                  :initiative_ids,
                  :published

  has_one :card, as: :cardable
  has_and_belongs_to_many :companies
  has_and_belongs_to_many :initiatives
  belongs_to :account

  mount_uploader :avatar, ImageUploader
  attr_taggable :specialities

  accepts_nested_attributes_for :card, update_only: true

  def email_name
    name.blank? ? 'Grunn.io-er' : name
  end

  def update_from_omniauth(omniauth)
    # raise omniauth.to_yaml
    self.name       = omniauth.info.name
    self.headline   = Person.headline_from_omniauth omniauth
    self.biography  = Person.biography_from_omniauth omniauth
    self.card       = build_card
    self.card.general_email_address = omniauth.info.email
    self.save
  end

  def self.create_from_omniauth(omniauth)
    # raise omniauth.to_yaml
    person            = self.new
    person.name       = omniauth.info.name
    person.headline   = headline_from_omniauth omniauth
    person.biography  = biography_from_omniauth omniauth
    person.card       = person.build_card
    person.card.general_email_address = omniauth.info.email
    person.save
    return person
  end

  def age
    if birthdate
      now = Time.now.utc.to_date
      now.year - birthdate.year - ((now.month > birthdate.month || (now.month == birthdate.month && now.day >= birthdate.day)) ? 0 : 1)
    else
      0
    end
  end

  def self.popular_tags_list
    tags ||= Person.tags.collect(&:name).sort
    tags
  end

  private

  def self.headline_from_omniauth(omniauth)
    omniauth.info.headline if omniauth.provider == 'linkedin'
  end

  def self.biography_from_omniauth(omniauth)
    omniauth.provider == 'github' ? omniauth.extra.raw_info.bio : omniauth.info.description
  end

  # hstore_accessor :websites, :personal, :blog, :portfolio
  # oneindig adressen, met keuzelijst label corporate / blog

end
