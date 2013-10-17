class Program < ActiveRecord::Base
  has_many :hosts
  has_many :users, through: :hosts
  belongs_to :category
  accepts_nested_attributes_for :hosts, allow_destroy: true
end
