class Account < ActiveRecord::Base
  rolify
  include Authority::UserAbilities

  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
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


  default_scope order: 'id ASC'
end

# TODO Sebastiaan :admin protected maken + bijlezen attr_accessible :)
