class Episode < ActiveRecord::Base
  belongs_to :program
  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates :title, :short_description,
                    :long_description,
                    :presence => true
end
