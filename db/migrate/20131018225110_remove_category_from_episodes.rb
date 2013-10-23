class RemoveCategoryFromEpisodes < ActiveRecord::Migration
  def change
    remove_column :episodes, :category
  end
end
