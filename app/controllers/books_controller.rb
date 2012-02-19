class BooksController < ApplicationController
  def index
    @books = Book.where(:checked_out => false)
  end
end
