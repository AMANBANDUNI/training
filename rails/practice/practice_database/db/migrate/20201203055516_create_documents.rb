class CreateDocuments < ActiveRecord::Migration[6.0]
  def change
    create_table :documents do |t|
      t.string:document_name
      t.string:written_by
      t.timestamps
    end
  end
end
