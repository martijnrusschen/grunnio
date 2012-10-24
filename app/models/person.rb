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

  attr_accessible :biography,
                  :birthdate,
                  :headline,
                  :name,
                  :specialities,
                  :card_attributes,
                  :company_ids,
                  :initiative_ids

  has_one :card, as: :cardable

  has_and_belongs_to_many :companies
  has_and_belongs_to_many :initiatives

  belongs_to :account

  accepts_nested_attributes_for :card, update_only: true


  def email_name
    name.blank? ? 'Grunn.io-er' : name
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

  private

  def self.headline_from_omniauth(omniauth)
    return omniauth.info.headline if omniauth.provider == 'linkedin'
  end

  def self.biography_from_omniauth(omniauth)
    return omniauth.info.description if omniauth.provider == 'linkedin'
    return omniauth.extra.raw_info.bio if omniauth.provider == 'github'
  end

  # hstore_accessor :websites, :personal, :blog, :portfolio
  # oneindig adressen, met keuzelijst label corporate / blog

end
