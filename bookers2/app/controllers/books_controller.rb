class BooksController < ApplicationController

def index
  @books = Book.all

end

def show

end

def create
  @books = Book.new(book_image_params)
  @books.user_id = current_user.id
  @book.save
  redirest_to books_path

end

def edit

end

def update

end

def destroy

end


private
  def book_params
    params.require(:book).permit(:title, :opinion, :image)
  end

end
