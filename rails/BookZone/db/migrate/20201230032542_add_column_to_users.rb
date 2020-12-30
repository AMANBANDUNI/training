class AddColumnToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :user_name, :string, null: false, default: ""
    add_column :users, :phone_number, :string, default: ""

    add_index :users, :user_name, 			unique: true
    add_index :users, :phone_number,		unique: true
  end
end
