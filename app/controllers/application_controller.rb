class ApplicationController < ActionController::Base
  # http_basic_authenticate_with :name => "silgron", :password => "silgron"
  protect_from_forgery
  before_filter :authenticate_account!, :except => [:show, :index]

  def authority_forbidden(exception)
    Authority.configuration.logger.warn(exception.message)
    redirect_to request.referrer.presence || root_path, :alert => 'You are not authorized to complete that action.'
  end
end
