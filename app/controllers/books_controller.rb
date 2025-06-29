class BooksController < ApplicationController
  # def new
  #   @book= Book.new
  # end

  def index
    @books= Book.all
    @book= Book.new
  end

  def show
    @book = Book.find(params[:id]) 
  end

  def edit
    @book = Book.find(params[:id]) 

  end

  def create
    @book = Book.new(book_params)
    if @book.save
      # 保存成功 → 詳細ページへリダイレクト
      flash[:notice] ='Book was successfully created.'  #showの呼出し！はbook"でs不要！
      redirect_to book_path(@book)
    else
      @books= Book.all
      # バリデーションエラー → 新規フォームを再表示
      render :index
    end
  end

  def destroy
    book = Book.find(params[:id])
    book.destroy
    flash[:notice] ='Book was successfully destroyed.' 
    redirect_to books_path
  end
  
  def update
    @book = Book.find(params[:id])
    if @book.update(book_params)
      flash[:notice] ='Book was successfully updated.' 
      redirect_to book_path
    else
      render :edit 
    end
  end

  private
  def book_params
    params.require(:book).permit(:title, :body)
  end

end
