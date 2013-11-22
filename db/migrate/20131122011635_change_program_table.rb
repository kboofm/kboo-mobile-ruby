class ChangeProgramTable < ActiveRecord::Migration
  def change
    drop_table :program_schedules
    create_table :program_schedules do |t|
      t.text :programs
      t.timestamps
    end
  end
end
