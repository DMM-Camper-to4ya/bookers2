class BooksController < ApplicationController


  def create
  book = Book.new(book_params)
  book.user_id = current_user.id
  book.save
  redirect_to'/books'
  end

  def index
  @books = Book.all
  @book = Book.new
  end

  def show
  @book = Book.find(params[:id])
  end

  # def destroy
  # book=Book.find(params[:id])
  # book.delete
  # redirect_to book_path(current_user)
  # end

  def edit
  @book=user.find(params[:id])
  end

private

def book_params
params.require(:book).permit(:title, :body, :image)
end

def user_params
params.require(:user).permit(:name, :introduction)
end


end



