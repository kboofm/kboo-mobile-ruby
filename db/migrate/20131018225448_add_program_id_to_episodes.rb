class AddProgramIdToEpisodes < ActiveRecord::Migration
  def change
    add_column :episodes, :program_id, :integer
  end
end
