class Program < ActiveRecord::Base
  has_many   :episodes
  belongs_to :category
  has_many :hosts
  has_many :users, through: :hosts
  validates :title, :date, :time, :category_id, :description, :presence => true
  accepts_nested_attributes_for :hosts,    allow_destroy: true
  accepts_nested_attributes_for :episodes, allow_destroy: true
end
