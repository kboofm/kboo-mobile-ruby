class Episode < ActiveRecord::Base

  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "35x35#", :mini => "25x25#"}, :default_url => "/images/:style/missing.png"

  validates :title, :short_description,
                    :long_description,
                    :audio_promo,
                    :category,
                    :url, 
                    :presence => true
end
