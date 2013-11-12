class Category < ActiveRecord::Base
  default_scope -> { order('name ASC') }
  
  validates :name, :presence => true, :uniqueness => true
  has_many :programs
end
