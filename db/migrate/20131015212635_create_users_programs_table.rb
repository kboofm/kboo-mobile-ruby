class CreateUsersProgramsTable < ActiveRecord::Migration
  def change
    create_table :users_programs do |t|
      t.belongs_to :user
      t.belongs_to :program
    end
  end
end
