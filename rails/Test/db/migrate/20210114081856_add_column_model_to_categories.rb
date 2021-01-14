class AddColumnModelToCategories < ActiveRecord::Migration[6.0]
  def change
    add_column :categories, :model, :integer, default: 2015
  end
end
