class Program < ActiveRecord::Base
  has_many :hosts
  has_many :users, through: :hosts
  has_many :episodes
  belongs_to :category
  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }
end
