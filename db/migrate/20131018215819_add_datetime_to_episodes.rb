class AddDatetimeToEpisodes < ActiveRecord::Migration
  def change
    add_column :episodes, :date, :date
    add_column :episodes, :time, :time
  end
end
