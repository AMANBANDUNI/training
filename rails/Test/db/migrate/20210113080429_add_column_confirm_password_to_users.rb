class AddColumnConfirmPasswordToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :confirmpassword, :string, null: false
  end
end
