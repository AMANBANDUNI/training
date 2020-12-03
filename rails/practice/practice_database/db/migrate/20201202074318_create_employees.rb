class CreateEmployees < ActiveRecord::Migration[6.0]
  def change
    create_table :employees do |t|
      t.string:name
      t.string:dob, limit:10
      t.string:gender, limit:1
      t.string:mail
      t.integer:salary
      t.belongs_to:branch
      t.timestamps
    end
  end
end
