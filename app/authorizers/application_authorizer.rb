# Other authorizers should subclass this one
class ApplicationAuthorizer < Authority::Authorizer

  # Any class method from Authority::Authorizer that isn't overridden
  # will call its authorizer's default method.
  #
  # @param [Symbol] adjective; example: `:creatable`
  # @param [Object] account - whatever represents the current account in your app
  # @return [Boolean]
  # def self.default(adjective, account)
  #   # 'Whitelist' strategy for security: anything not explicitly allowed is
  #   # considered forbidden.
  #   false
  # end

  # config.abilities =  {
  #   :create => 'creatable',
  #   :read   => 'readable',
  #   :update => 'updatable',
  #   :delete => 'deletable'
  # }

  # Example call: `default(:creatable, current_account)`
  def self.default(able, account)
    account.has_role? :admin
  end

  def self.creatable_by?(account)
    account
  end

  def self.readable_by?(account)
    true
  end

  def self.updatable_by?(account)
    account
  end

  # def self.deletable_by?(account)
  #   account.has_role? :admin
  # end

# Instances
  def default(able, account)
    account.has_role?(:owner, resource) || account.has_role?(:admin)
  end

  def readable_by?(account)
    true
  end

  def updatable_by?(account)
    account.has_role?(:owner, resource) || account.has_role?(:editor, resource) || account.has_role?(:admin)
  end

  def deletable_by?(account)
    account.has_role?(:owner, resource) || account.has_role?(:admin)
  end
end
