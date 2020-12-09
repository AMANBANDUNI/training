class UpdateColumn < ActiveRecord::Migration[6.0]
  def change
  	remove_column :paragraphs, :paragraph_id
  end
end
