class Book < ActiveRecord::Base
  attr_accessible :faculty_first, :faculty_last, :number, :price, :title
  
  validates_presence_of :faculty_first, :faculty_last, :number, :price, :title
  
end
