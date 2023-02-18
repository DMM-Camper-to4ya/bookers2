class UsersController < ApplicationController

  def show
   @user=Book.find(params[:id])
   @post_book=@user.post_books
  end

  def edit
  end
end
