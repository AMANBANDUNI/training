class ChangeColumn < ActiveRecord::Migration[6.0]
  def change
  	remove_column :paragraphs, :document_id
  	change_table :paragraphs do |t|
      t.belongs_to:document, foreign_key: true
    end
  end
end
