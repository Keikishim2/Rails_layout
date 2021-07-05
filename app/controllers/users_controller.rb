class UsersController < ApplicationController
  layout "two_column"
  def index
    @all_users = User.all
  end
  def new
  @new_user = User.create(user_params)
  redirect_to root_path
  end
  private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :favorite_language)
  end
end
