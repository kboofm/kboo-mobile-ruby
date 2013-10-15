class DropManyAddThrough < ActiveRecord::Migration
  def change
    drop_table :users_programs
  end
end
