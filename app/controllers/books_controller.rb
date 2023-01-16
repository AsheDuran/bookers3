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
    @book.user_id = current_user.id
    @book.save
    # logger.debug("投稿成功")
    redirect_to books_path
  end

  def edit
    @book = Book.find(params[:id])
  end

  private

  def book_params
    params.require(:book).permit(:title, :body)
  end

end
