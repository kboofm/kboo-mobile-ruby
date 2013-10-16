class AddAudioFilesToDb < ActiveRecord::Migration
  def change
    create_table :kboo_schedule_episode_files do |t|
      t.integer :episode_id
      t.integer :fid
      t.string  :filename
      t.string  :filepath
      t.integer :archive
      t.integer :starttime
      t.integer :endtime
      t.integer :created
      t.integer :updated
      t.integer :status
    end
  end
end
