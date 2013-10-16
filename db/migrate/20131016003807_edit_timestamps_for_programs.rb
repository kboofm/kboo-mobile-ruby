class EditTimestampsForPrograms < ActiveRecord::Migration
  def change 
    remove_column :programs, :time
    remove_column :programs, :date

    add_column :programs, :time, :date
    add_column :programs, :date, :datetime
  end
end
