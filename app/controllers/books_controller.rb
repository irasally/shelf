class BooksController < ApplicationController
  def index
    @books = Book.where(:checked_out => false)
  end
  def show
    @book = Book.find(params[:id])
  end
  def new
    @book = Book.new
    @years = Array.new((1985..Time.now.year).map{|y| [y,y]}.reverse)
  end
  def edit
    @book = Book.find(params[:id])
    @years = Array.new((1985..Time.now.year).map{|y| [y,y]}.reverse)
  end
  def create
    @book = Book.create(params[:book])
    redirect_to @book
  end
  def update
    @book = Book.find(params[:id])
    @book.update_attributes(params[:book])
    redirect_to @book
  end
  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to :books
  end
end
