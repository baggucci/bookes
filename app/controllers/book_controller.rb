class BookController < ApplicationController
  def index
  end

  def show
    @book = Book.find(params[:id])

  end

  def create
    @book = Book.new(book_params)
    if @book.save
      # 保存後に /bookers/book/:id に飛ばす
      redirect_to book_path(@book), notice: 'Book was successfully created.'
  end

  private
    def book_params
      params.require(:book).permit(:title, :body)
    end
end