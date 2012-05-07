BoothMartApp::Application.routes.draw do
  
  get "boothmart", :controller => "boothmarts", :action => "index", :as => :boothmarts
  
  get "boothmart/books", :controller => "books", :action => "index", :as => :books
  
  get "boothmart/books/new", :controller => "books", :action => "new", :as => :new_book
  post "boothmart/books", :controller => "books", :action => "create"
  
  get "boothmart/books/:id/edit", :controller => "books", :action => "edit", :as => :edit_book
  get "boothmart/books/:id" , :controller => "books", :action => "show", :as => :book
  put "boothmart/books/:id", :controller => "books", :action => "update"
  
  delete "boothmart/books/:id", :controller => "books", :action => "destroy" 

end
