class OmniauthCallbacksController < Devise::OmniauthCallbacksController
  
  def all
    account = Account.from_omniauth(request.env['omniauth.auth'])
    sign_in_and_redirect account, notice: t('account.signed_in')
  end
  alias_method :linkedin, :all
  alias_method :github, :all
  alias_method :facebook, :all
  
end