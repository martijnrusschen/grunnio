class RegistrationsController < Devise::RegistrationsController
  protected

  def after_sign_up_path_for(resource)
    edit_person_path(current_account.person)
  end

  def after_inactive_sign_up_path_for(resource)
    edit_person_path(current_account.person)
  end
end
