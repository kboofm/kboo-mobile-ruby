class RemoveDescriptionAddLink < ActiveRecord::Migration
  def change
    remove_column :program_highlights, :description
    add_column :program_highlights, :link, :string
  end
end
