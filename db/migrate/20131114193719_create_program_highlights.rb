class CreateProgramHighlights < ActiveRecord::Migration
  def change
    create_table :program_highlights do |t|
      t.string :program_title
      t.text :description
      t.timestamps
    end
  end
end
