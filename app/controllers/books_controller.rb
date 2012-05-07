class BooksController < ApplicationController
 def index
   @books = Book.all
 end

 def show
    @book = Book.find(params[:id])
 end

 def new
   @book = Book.new
 end
 
 def create
    @book = Book.new
    @book.number = params[:book][:number]
    @book.title = params[:book][:title]
    @book.faculty_last = params[:book][:faculty_last]
    @book.faculty_first = params[:book][:faculty_first]
    @book.price = params[:book][:price]
    if @book.save
      flash[:notice]= "Thank you for adding a course pack!!"
      redirect_to books_url
    else 
      flash[:alert] = "You have unfilled information"
      render "new"
    end
  end
 
  def edit
    @book = Book.find(params[:id])
  end
 
 def update
   @book = Book.find(params[:id])
   @book.number = params[:book][:number]
   @book.title = params[:book][:title]
   @book.faculty_last = params[:book][:faculty_last]
   @book.faculty_first = params[:book][:faculty_first]
   @book.price = params[:book][:price]
   @book.save
   flash[:notice]= "Thank you.The data was successfully updated!!"
   redirect_to books_url
 end

 def destroy
   @book = Book.find(params[:id])
   @book.destroy
   redirect_to books_url
 end
   
 
end
