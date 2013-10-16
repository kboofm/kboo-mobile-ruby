class CreateEpisodes < ActiveRecord::Migration
  def change
    create_table :episodes do |t|
      t.string   :title
      t.string   :short_description
      t.string   :image
      t.text     :long_description
      t.string   :audio_promo
      t.string   :category

      t.timestamps
    end
  end
end
