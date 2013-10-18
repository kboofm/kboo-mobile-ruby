class AddAttachmentImageToPrograms < ActiveRecord::Migration
  def self.up
    change_table :programs do |t|
      t.attachment :image
    end
  end

  def self.down
    drop_attached_file :programs, :image
  end
end
