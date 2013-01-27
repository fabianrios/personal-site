class CreateEtiquetas < ActiveRecord::Migration
  def change
    create_table :etiquetas do |t|
      t.integer :project_id
      t.string :label
      t.string :images

      t.timestamps
    end
      add_index :etiquetas, :project_id
  end
end
