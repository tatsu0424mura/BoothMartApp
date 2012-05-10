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
    @book = Book.new(params[:book])
    # @book.number = params[:book][:number]
    #     @book.title = params[:book][:title]
    #     @book.faculty_last = params[:book][:faculty_last]
    #     @book.faculty_first = params[:book][:faculty_first]
    #     @book.price = params[:book][:price]
    respond_to do |format|
      if @book.save
          flash[:notice]= "Thank you for adding a course pack!!"
          format.html { redirect_to books_url }
          format.json { render json: @book, status: :created, location: @book }
          # redirect_to books_url
      else 
          flash[:alert] = "You have unfilled information"
          format.html { render action: "new" }
          format.json { render json: @book.errors, status: :unprocessable_entity }
          # render "new"
      end
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
   @book.year = params[:book][:year]
   @book.quarter = params[:book][:quarter]
   @book.name = params[:book][:name]
   @book.email = params[:book][:email]
   @book.tel = params[:book][:tel]
   
   respond_to do |format|
     if @book.save
        flash[:notice]= "Thank you.The data was successfully updated!!"
        format.html {redirect_to books_url}
        format.json { head :no_content}
     else
        format.html { render action: "edit" }
        format.json { render json: @book.errors, status: :unprocessable_entity }
     end
   end
end

 def destroy
   @book = Book.find(params[:id])
   @book.destroy
   flash[:notice] = "Course Pack Offer Successfully Deleted!"
   respond_to do |format|
      format.html { redirect_to books_url }
      format.json { head :no_content }
   end
 end
   
 
end
