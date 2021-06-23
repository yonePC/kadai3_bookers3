class BooksController < ApplicationController

def index
  @books = Book.all
  @book = Book.new


end

def show
  @book = Book.find(params[:id])
  @user = @book.user
  @newbook = Book.new
end

def create
  @book = Book.new(book_params)
  @book.user_id = current_user.id
      if @book.save
         redirect_to book_path(@book)
         flash[:notice] = "You have created book successfully."
      else
         @books = Book.all
         render :index

      end
end


def edit
  @book = Book.find(params[:id])

end

def update
  book = Book.find(params[:id])
  book.update(book_params)
    if @book.save
     flash[:notice] = "You have updated book successfully."
     redirect_to book_path(@book.id)
    else
      render :edit
    end
    #redirect_to book_path(book.id)
end

def destroy
  book = Book.find(params[:id])
  book.destroy
  redirect_to books_path
end


  private
  def book_params
    params.require(:book).permit(:title, :body, :user_id)
  end



end
