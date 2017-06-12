class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?
  protect_from_forgery with: :exception
  # rescue_from ActiveRecord::RecordNotFound, with: :couldnt_find_record
  # rescue_from NoMethodError, with: :no_method_error


  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
  end

  # private
  # def couldnt_find_record
  #   redirect_to root_url, notice: "That record doesn't exist!"
  # end
  #
  # def no_method_error
  #   redirect_to root_url, notice: "The page doesn't exist!"
  # end
end
