class AddColumnHostToEpisode < ActiveRecord::Migration
  def change
    add_column :episodes, :host, :string
  end
end
