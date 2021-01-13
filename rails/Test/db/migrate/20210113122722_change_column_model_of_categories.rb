class ChangeColumnModelOfCategories < ActiveRecord::Migration[6.0]
  def change
  	change_column :categories, :model, :decimal
  end
end
