class BooksController < ApplicationController

  def show
  end

  def index
  @books = Book.all
  @book = Book.new
  end

  def edit
  end
end
