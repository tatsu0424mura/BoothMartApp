class Apartment < ActiveRecord::Base
  attr_accessible :address, :city, :descriptions, :email, :end_date, :housing_type, :name, :neighborhood, :pets, :pictures, :rent, :start_date, :tel
  
  validates_presence_of :address, :city, :email, :end_date, :housing_type, :name, :neighborhood, :rent, :start_date, :tel
end
