class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
end


#BROKEN COMAND OF VISA CARD----before_action :configure_permitted_parameters, if: :devise_controller?

protected_methods
def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:stripe_card_token, :email, :password, :password_confirmation) }
end
