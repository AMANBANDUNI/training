class AddColumnNameToImages < ActiveRecord::Migration[6.0]
  def change
    add_column :images, :name, :string, null: false
  end
end
