class AddOnAirNext < ActiveRecord::Migration
  def change
    create_table :on_air_next do |t|
      t.string :program_title

      t.timestamps
    end
  end
end
