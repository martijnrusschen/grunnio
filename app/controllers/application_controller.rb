class ApplicationController < ActionController::Base
  http_basic_authenticate_with :name => "silgron", :password => "silgron"
  protect_from_forgery
  check_authorization :unless => :devise_controller?

  def current_ability
    @current_ability ||= Ability.new(current_account)
  end
end
