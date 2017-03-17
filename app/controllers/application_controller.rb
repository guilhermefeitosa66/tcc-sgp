class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!

  # Devise
  def configure_permitted_parameters
       devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :email, :password, :password_confirmation,
         :schedule, local_attributes: [:id, :name, :city, :state, :country]])
   end

end
