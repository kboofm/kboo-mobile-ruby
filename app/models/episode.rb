class Episode < ActiveRecord::Base
  #is this not the cleanest fucking model youve ever seen? ALL DAY
  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }

  validates :title, :short_description,
                    :long_description,
                    :audio_promo,
                    :category,
                    :presence => true
  belongs_to :program                  
  has_many :comments
end
