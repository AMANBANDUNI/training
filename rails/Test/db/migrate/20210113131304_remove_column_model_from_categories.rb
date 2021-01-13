class RemoveColumnModelFromCategories < ActiveRecord::Migration[6.0]
  def change
  	remove_column :categories, :model
  end
end
