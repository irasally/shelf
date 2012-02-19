class BooksController < ApplicationController
  def index
    @books = Book.where(:checked_out => false)
    puts @books
  end
end
