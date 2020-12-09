class CreateParagraphs < ActiveRecord::Migration[6.0]
  def change
    create_table :paragraphs do |t|
      t.string:paragraph_name
      t.belongs_to:section, foreign_key: true
      t.belongs_to:paragraph, foreign_key: true
      t.timestamps
    end
  end
end
