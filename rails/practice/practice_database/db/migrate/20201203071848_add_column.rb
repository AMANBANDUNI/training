class AddColumn < ActiveRecord::Migration[6.0]
  def change
  	change_table :paragraphs do |t|
      t.belongs_to:document
    end
  end
end
