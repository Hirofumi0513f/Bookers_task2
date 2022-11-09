class BooksController < ApplicationController
  def new
    @Book = Book.new
  end

  def create
    book = Book.new(book_params)
    book.save
    redirect_to '/books'
  end

  def index
    @books = Book.all
  end

  def show
    
  end

  def eidit
  end

  private
  #ストロングパロメータ
  def book_params
    params.require(:book).permit(:title,:body)
  end
end
