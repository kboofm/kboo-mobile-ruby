class DropTimeDateEpisodes < ActiveRecord::Migration
  def change
  	remove_column :episodes, :time, :time
    remove_column :episodes, :date, :date
  end
end
