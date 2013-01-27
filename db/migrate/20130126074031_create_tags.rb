class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.integer :project_id
      t.string :tag_label
      t.string :image_reference

      t.timestamps
    end
      add_index :tags, :project_id
  end
end
