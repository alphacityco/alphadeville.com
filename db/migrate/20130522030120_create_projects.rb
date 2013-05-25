class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.string :title
      t.string :title_link
      t.string :subtitle
      t.string :img_small
      t.string :zoom_details
      t.string :img_large
      t.integer :project_group_id

      t.timestamps
    end
  end
end
