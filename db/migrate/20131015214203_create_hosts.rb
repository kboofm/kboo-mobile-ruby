class CreateHosts < ActiveRecord::Migration
  def change
    create_table :hosts do |t|
      t.belongs_to :user
      t.belongs_to :program
      t.string     :created_by
      t.timestamps
    end
  end
end
