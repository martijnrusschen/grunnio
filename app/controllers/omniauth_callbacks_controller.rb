class OmniauthCallbacksController < Devise::OmniauthCallbacksController

  def all
    @account = Account.from_omniauth(request.env['omniauth.auth'])
    if @account.persisted?
      sign_in_and_redirect @account, notice: t('account.signed_in')
    else
      session["devise.account_attributes"] = request.env["omniauth.auth"]
      redirect_to new_account_registration_url
    end
  end

  alias_method :linkedin, :all
  alias_method :github, :all
  alias_method :facebook, :all
end
