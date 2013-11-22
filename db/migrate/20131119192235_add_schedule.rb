class AddSchedule < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.string :program_title
      t.string :url
      t.string :time
      t.timestamps
    end
  end
end
