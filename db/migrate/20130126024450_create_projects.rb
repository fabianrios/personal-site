class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.text :description
      t.datetime :fecha
      t.string :image
      t.string :link_url
      t.boolean :commercial
      t.string :label

      t.timestamps
    end
  end
end
