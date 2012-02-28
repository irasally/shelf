class Category < ActiveRecord::Base
  validates :name, :presence => true
  validates :color, :presence => true
  has_many :books
end
