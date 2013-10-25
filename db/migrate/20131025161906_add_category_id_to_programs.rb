class AddCategoryIdToPrograms < ActiveRecord::Migration
  def change
    remove_column :programs, :category
  end
end
