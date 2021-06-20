class BooksController < ApplicationController

def index
  @books = Book.all
  
end
  
def show
  
end

def create
  
  
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
