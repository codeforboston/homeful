class Clients::RegistrationsController < Devise::RegistrationsController
  protected
  
  def after_sign_up_path_for(resource)
    edit_client_path(resource)
  end
end
