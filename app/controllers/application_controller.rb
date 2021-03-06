class ApplicationController < ActionController::Base
  include ApplicationHelper

  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :authenticate_user! , unless: :devise_controller?

  rescue_from CanCan::AccessDenied do | exception |
    flash[:error] = exception.message
    redirect_to root_url
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first, :last, :code])
    devise_parameter_sanitizer.permit(:account_update, keys: [:first, :last])
  end
end
