class BooksController < ApplicationController


  def create
  book=Book.new(book_params)
  book.user_id=current_user.id
  book.save
  redirect_to'/books'
  end

  def index
  @books = Book.all
  @book=Book.new

  end

  def show

  end


  def edit
  @book=user.find(params[:id])
  end

private

def book_params
params.require(:book).permit(:title, :body)
end

def user_params
params.require(:user).permit(:name, :introduction, :image)
end

end



