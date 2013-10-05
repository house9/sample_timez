class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :authenticate_user!

  before_filter :configure_permitted_parameters, if: :devise_controller?

  before_filter :set_time_zone_for_user

  after_filter :set_time_zone_for_system

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :time_zone
    devise_parameter_sanitizer.for(:account_update) << :time_zone
  end

  def set_time_zone_for_user
    if current_user
      Time.zone = current_user.time_zone
    end
  end

  def set_time_zone_for_system
    Time.zone = Rails.application.config.time_zone
  end

end
