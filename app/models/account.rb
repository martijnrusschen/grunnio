# == Schema Information
#
# Table name: accounts
#
#  id                     :integer          not null, primary key
#  email                  :string(255)      default(""), not null
#  encrypted_password     :string(255)      default("")
#  reset_password_token   :string(255)
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0)
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string(255)
#  last_sign_in_ip        :string(255)
#  confirmation_token     :string(255)
#  confirmed_at           :datetime
#  confirmation_sent_at   :datetime
#  unconfirmed_email      :string(255)
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  invitation_token       :string(60)
#  invitation_sent_at     :datetime
#  invitation_accepted_at :datetime
#  invitation_limit       :integer
#  invited_by_id          :integer
#  invited_by_type        :string(255)
#

class Account < ActiveRecord::Base
  rolify
  include Authority::UserAbilities

  Callbacks
  after_create do |account|
      account.create_person
      account.add_role :owner, account.person
  end


  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :omniauthable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable, :invitable

  attr_accessible :email,
                  :password,
                  :password_confirmation,
                  :remember_me

  attr_accessible :email,
                  :password,
                  :password_confirmation,
                  :remember_me,
                  :role_ids,
                  as: :admin

  has_one :person
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
