class HomeController < ApplicationController
  def index
    @users = User.all
    @secret_codes = SecretCode.all
  end

  def users
    @users = User.all
  end
end
