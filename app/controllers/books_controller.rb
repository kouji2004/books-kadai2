class BooksController < ApplicationController
  def new
    @books = Book.all
    @book = Book.new
  end

  def create
    book = Book.new(book_params)
    book.save
    redirect_to "/books/new"
  end


  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    book = Book.find(params[:id])
    book.update(book_params)
    redirect_to "/books/new"
  end

def destroy
  book = Book.find(params[:id])
  book.destroy  
  redirect_to "/books/new"
end


  private
  def book_params
    params.require(:book).permit(:title,:body)
  end


end
