class ChangeColumnModelOfCategories < ActiveRecord::Migration[6.0]
  def change
    def up
  	  change_column :categories, :model, :decimal
  	end

  	def down
  	  change_column :categories, :model, :integer
    end
  end
end
