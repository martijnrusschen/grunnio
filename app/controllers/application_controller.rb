class ApplicationController < ActionController::Base
  http_basic_authenticate_with :name => "silgron", :password => "silgron"
  protect_from_forgery
end
