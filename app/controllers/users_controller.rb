class UsersController < ApplicationController

  def update
  end

  def show

  end

  def index
  @users=User.all
  end

  def edit
  end

  private
  def user_params
  params.require(:user).permit(:name, :introduction, :profile_image)
  end

end
