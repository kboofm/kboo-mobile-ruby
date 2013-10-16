class AddAttachedPhotos < ActiveRecord::Migration
  def self.up
    add_attachment :episodes, :image
  end

  def self.down
    remove_attachment :episodes, :image
  end
end
