class BooksController < ApplicationController
  def index
  end

  def create
  	@book = Book.new(book_params)
  	@book.save
  	redirect_to '/top'
  end

  private
  def book_params
  	params.require(:book).permit(:title, :body)
  end

end
