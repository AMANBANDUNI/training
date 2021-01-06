class ChangeColumnNameOfCategories < ActiveRecord::Migration[6.0]
  def change
  	rename_column :categories, :type, :camera_type
  end
end
