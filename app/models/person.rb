class Person < ActiveRecord::Base
  include Authority::Abilities
  resourcify

  attr_accessible :biography,
                  :birthdate,
                  :headline,
                  :name,
                  :specialities,
                  :card_attributes

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

# TODO: Personen alleen via bedrijf en/of initiatief toevoegen
