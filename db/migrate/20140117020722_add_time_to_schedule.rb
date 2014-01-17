class AddTimeToSchedule < ActiveRecord::Migration
  def change
  	add_column :program_schedules, :time, :string
  end
end
