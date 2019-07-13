class Api::BooksController < ApplicationController
  def index
    @books = Book.all
    render json: @books
  end

  def show
    @book = Book.find(params[:id])
    render json: @book
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      render json: @book
    else
      render json: { errors: { message: "This book failed to save" }}
    end
  end

  def destroy
    @book = Book.find(params[:id])
    @book.delete
  end

  private

  def book_params
    params.require(:book).permit(:title, :publication_year, :author, :description, :total_pages, :rating)
  end
end