class Users::RegistrationsController < Devise::RegistrationsController
  #skip_before_action :authenticate_user!
  layout "signup"
end