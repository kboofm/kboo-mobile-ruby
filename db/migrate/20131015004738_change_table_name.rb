class ChangeTableName < ActiveRecord::Migration
  def change
    rename_table :kboo_schedule_episode_files, :episode_audio
  end
end
