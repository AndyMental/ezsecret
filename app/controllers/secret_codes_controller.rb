class SecretCodesController < ApplicationController
  before_action :check_permissions

  def index
    @secret_codes = SecretCode.all
  end

  def create
    SecretCode.generate_codes secret_code_params[:count].to_i
    flash[:now] = secret_code_params[:count] + " secret code created successfully"
    redirect_to secret_codes_path
  end

  private

  def secret_code_params
    params.permit(:count)
  end

  def check_permissions
    authorize! :create, resource
  end
end
