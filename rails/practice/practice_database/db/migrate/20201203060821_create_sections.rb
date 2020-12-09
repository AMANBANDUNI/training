class CreateSections < ActiveRecord::Migration[6.0]
  def change
    create_table :sections do |t|
      t.string:section_name
      t.belongs_to:document
      t.timestamps
    end
  end
end
