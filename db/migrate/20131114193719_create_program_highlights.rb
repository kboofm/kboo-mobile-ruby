class CreateProgramHighlights < ActiveRecord::Migration
  def change
    create_table :program_highlights do |t|

      t.timestamps
    end
  end
end
