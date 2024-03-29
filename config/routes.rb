BoothMartApp::Application.routes.draw do
    root :to => "sessions#new"
    
    get "sessions" => "sessions#new", :as => :root
    post "sessions" => "sessions#create"
    
    get "logout" => "sessions#destroy", :as => :logout

    get "boothmart" => "boothmarts#index", :as => :boothmarts
    
    resources :books, :apartments, :events
    
    #     get "boothmart/books" => "books#index", :as => :books
    #          
    #     get "boothmart/books/new" => "books#new", :as => :new_book
    #     post "boothmart/books" => "books#create"
    #     
    #     get "boothmart/books/:id/edit" => "books#edit", :as => :edit_book
    #     get "boothmart/books/:id" => "books#show", :as => :book
    #     put "boothmart/books/:id" => "books#update"
    #     
    #     delete "boothmart/books/:id" => "books#destroy"
 
end

  # get "boothmart", :controller => "boothmarts", :action => "index", :as => :boothmarts
  #   
  #   get "boothmart/books", :controller => "books", :action => "index", :as => :books
  #   
  #   get "boothmart/books/new", :controller => "books", :action => "new", :as => :new_book
  #   post "boothmart/books", :controller => "books", :action => "create"
  #   
  #   get "boothmart/books/:id/edit", :controller => "books", :action => "edit", :as => :edit_book
  #   get "boothmart/books/:id" , :controller => "books", :action => "show", :as => :book
  #   put "boothmart/books/:id", :controller => "books", :action => "update"
  #   
  #   delete "boothmart/books/:id", :controller => "books", :action => "destroy"  
   