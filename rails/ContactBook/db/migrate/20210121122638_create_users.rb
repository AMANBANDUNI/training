class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.string :phone_number
      t.string :gender, null:false
      t.string :profile_pic

      t.timestamps
    end
  end
end
