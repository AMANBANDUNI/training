class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name, null: false
      t.text :description, default: "nodescription"
      t.decimal :price, null: false
      t.integer :make, null: false

      t.timestamps
    end
  end
end
