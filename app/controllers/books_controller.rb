class BooksController < ApplicationController

  def show
  end

  def index
  @books = Book.all
  @book = Book.new
  end

  def edit
  end

  def create
    @book = Book.new(book_params)
    @book.save
    redirect_to books_path
  end

  private

  def book_params
    params.require(:book).permit(:title, :body)
  end

end
