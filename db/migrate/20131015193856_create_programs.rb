class CreatePrograms < ActiveRecord::Migration
  def change
    create_table :programs do |t|
      t.string :title
      t.string :date
      t.string :time
      t.string :category
      t.timestamps
    end
  end
end
