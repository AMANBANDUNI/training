class CreateBios < ActiveRecord::Migration[6.0]
  def change
    create_table :bios do |t|
      t.text :description, default: "No Bio added"
      t.references :account, null: false, foreign_key: true

      t.timestamps
    end
  end
end
