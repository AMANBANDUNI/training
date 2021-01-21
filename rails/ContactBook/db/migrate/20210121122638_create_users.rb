class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :phone_number
      t.string :gender
      t.string :profile_pic

      t.timestamps
    end
  end
end
