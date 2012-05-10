class Book < ActiveRecord::Base
  attr_accessible :faculty_first, :faculty_last, :number, :price, :title,
                  :quarter,:year, :name, :email, :tel
  
  validates_presence_of :faculty_first, :faculty_last, :number, :price, :title, 
                        :quarter, :year, :name, :email, :tel
  
end
