class ProgramSchedule < ActiveRecord::Migration
  def change
    create_table :program_schedules do |t|
      t.text :title
      t.text :host
      t.date :time
  end
end
