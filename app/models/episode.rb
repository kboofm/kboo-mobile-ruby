class Episode < ActiveRecord::Base
  #holy shit is this not the sexiest validation ever bitches? 
  #ALLDAY

  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"

  validates :title, :short_description,
                    :long_description,
                    :audio_promo,
                    :category,
                    # :image, 
                    :presence => true
end
