class Admin::ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :authenticate_admin!

  add_breadcrumb "home", :root_path
  add_breadcrumb "admin", :admin_root_path

private
  def authenticate_admin!
    (current_account.nil?) ? redirect_to(root_path) : (redirect_to(root_path) unless current_account.admin?)
  end
end
