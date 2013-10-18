class AddColumnEpisode < ActiveRecord::Migration
  def change
    add_column :episodes, :url, :string
  end
end
