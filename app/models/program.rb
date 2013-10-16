class Program < ActiveRecord::Base
<<<<<<< HEAD
  has_many   :episodes
  has_many   :hosts
  has_many   :users, through: :hosts
  belongs_to :category
  accepts_nested_attributes_for :hosts,    allow_destroy: true
  accepts_nested_attributes_for :episodes, allow_destroy: true
=======
  has_many :hosts
  has_many :users, through: :hosts
  belongs_to :category
>>>>>>> 2aa2623... Finish CRUD program/categories/host
end
