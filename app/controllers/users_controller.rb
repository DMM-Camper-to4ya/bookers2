class UsersController < ApplicationController

  def new
    @post_image=User.new
  end


  def show
   @user=Book.find(params[:id])
   @post_book=@user.post_books
  end

  def index
  @users=User.all
  end

  def edit
  end

  private
  def user_params
      params.require(:user).permit(:name, :introduction, :image)
  end

end
