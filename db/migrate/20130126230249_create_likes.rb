class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.integer :project_id
      t.integer :likes
      t.integer :views

      t.timestamps
    end
    add_index :likes, :project_id
  end
end
