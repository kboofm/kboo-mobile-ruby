class EditTimestampsForProgramsAgain < ActiveRecord::Migration
  def change
    remove_column :programs, :time
    remove_column :programs, :date

    add_column :programs, :time, :time
    add_column :programs, :date, :date
  end
end
