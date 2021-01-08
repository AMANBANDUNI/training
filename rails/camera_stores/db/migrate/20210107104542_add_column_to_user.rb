class AddColumnToUser < ActiveRecord::Migration[6.0]
  def change
    add_reference :users, :product, null: false, foreign_key: true
  end
end
