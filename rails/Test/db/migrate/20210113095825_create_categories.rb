class CreateCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :categories do |t|
      t.string :name, null: false
      t.text :camera_type, default: "Undecided", null: false
      t.integer :model, null:false

      t.timestamps
    end
  end
end
