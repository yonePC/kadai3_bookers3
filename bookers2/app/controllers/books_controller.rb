class BooksController < ApplicationController

def index
  @books = Book.all
  #@book = Book.new


end

def show
  @book = Book.find(params[:id])
  @book = Book.new
end

def create
  @books = Book.new(book_params)
  @books.user_id = current_user.id
  @books.save
  redirect_to books_path

end

def edit
  @book = Book.find(params[:id])

end

def update

end

def destroy

end


private
  def book_params
    params.require(:book).permit(:title, :body)
  end

end
