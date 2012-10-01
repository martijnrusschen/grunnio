class Account < ActiveRecord::Base
  rolify
  include Authority::UserAbilities

  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :omniauthable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable, :invitable
  
  # Attributes
  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me

  # attr_accessible :title, :body
  
  # Associations
  has_many :authentications
  
  # Scopes
  default_scope order: 'id ASC'
  
  
  def self.from_omniauth(omniauth)
    password = (0...8).map{65.+(rand(25)).chr}.join # Random password
    authentication = Authentication.where(omniauth.slice(:provider, :uid)).first_or_create do |authentication|
      account = where(email: omniauth.info.email).first_or_create do |account|
        account.password              = password
        account.password_confirmation = password
        account.confirm!
      end
      authentication.omniauth = omniauth
      authentication.account  = account
    end
    return authentication.account
  end
  
  def self.new_with_session(params, session)
    if session['devise.account_attributes']
      new(session['devise.account_attributes'], without_protection: true) do |account|
        account.attributes = params
        account.valid?
      end
    else
      super
    end
  end
  
  def password_required?
    super
  end
  
end

#TODO Sebastiaan :admin protected maken + bijlezen attr_accessible :)
