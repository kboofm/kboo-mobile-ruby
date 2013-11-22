class HighlightsAs2dArray < ActiveRecord::Migration
  def change
    remove_column :program_highlights, :program_title, :string
    remove_column :program_highlights, :link, :string
    add_column :program_highlights, :highlights, :text
  end
end
