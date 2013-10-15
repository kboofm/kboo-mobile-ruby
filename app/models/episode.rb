class Episode < ActiveRecord::Base
  #holy shit is this not the sexiest validation ever bitches? 
  #ALLDAY
  validates :title, :short_description,
                    :long_description,
                    :audio_promo,
                    :category,
                    :image, 
                    :presence => true
end
