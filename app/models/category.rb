class Category < ActiveRecord::Base
  default_scope -> { order('name ASC') }
  has_many :programs
end
