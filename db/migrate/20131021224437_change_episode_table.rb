class ChangeEpisodeTable < ActiveRecord::Migration
  def change
    remove_column :episodes, :image
    remove_column :episodes, :audio_promo
    remove_column :episodes, :url
    
    add_column :episodes, :audio_url, :string

  end
end
