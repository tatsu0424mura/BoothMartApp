class Event < ActiveRecord::Base
  attr_accessible :date, :name, :price, :quantity
end
