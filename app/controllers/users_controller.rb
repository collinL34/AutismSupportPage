class UsersController < ApplicationController
  def index
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :address, :zip_code, :city, :state, :email, :password)
  end
end