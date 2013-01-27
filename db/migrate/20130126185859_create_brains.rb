class CreateBrains < ActiveRecord::Migration
  def change
    create_table :brains do |t|
      t.integer :project_id
      t.string :status
      t.string :flavor

      t.timestamps
    end
    add_index :brains, :project_id
  end
end
