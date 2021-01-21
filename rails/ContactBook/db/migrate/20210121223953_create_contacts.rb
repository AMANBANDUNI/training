class CreateContacts < ActiveRecord::Migration[6.0]
  def change
    create_table :contacts do |t|
      t.string :name, null: false
      t.string :phone_number, null: false
      t.string :email
      t.text :address
      t.string :image

      t.timestamps
    end
  end
end
