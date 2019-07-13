class Api::BooksController < ApplicationController
  def index
    @books = Book.all
    render json: @books
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      render json: @book
    else
      render json: { errors: { message: "This book failed to save" }}
    end
  end

  private

  def book_params
    params.require(:book).permit(:title, :publication_year)
  end
end