class AddDatetimeToEpisodes < ActiveRecord::Migration
  def change
    add_column :episodes, :time, :time
    add_column :episodes, :date, :date
  end
end
