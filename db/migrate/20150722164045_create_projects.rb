class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name, null:false
      t.text :description
      t.references :lead

      t.timestamps
    end
  end
end
