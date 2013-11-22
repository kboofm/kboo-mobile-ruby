class CreateOnAirNows < ActiveRecord::Migration
  def change
    create_table :on_air_nows do |t|
      t.string :program_title

      t.timestamps
    end
  end
end
