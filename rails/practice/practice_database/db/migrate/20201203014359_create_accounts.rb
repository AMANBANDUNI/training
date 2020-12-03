class CreateAccounts < ActiveRecord::Migration[6.0]
  def change
    create_table :accounts do |t|
      t.belongs_to:supplier
      t.integer:account_number
      t.timestamps
    end
  end
end
