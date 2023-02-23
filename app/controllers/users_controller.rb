class UsersController < ApplicationController

  def update
  end

  def show
  @user=User.find(params[:id])
  @books=@user.books
  end

  def index
  @user=User.all
  # @users=User.find(params[:id])
  end

  def edit
  end

  private
  def user_params
  params.require(:user).permit(:name, :introduction, :profile_image)
  end

end
