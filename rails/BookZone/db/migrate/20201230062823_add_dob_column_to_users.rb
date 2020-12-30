class AddDobColumnToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :dob, :datetime
  end
end
