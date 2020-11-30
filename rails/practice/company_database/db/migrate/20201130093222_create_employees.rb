class CreateEmployees < ActiveRecord::Migration[6.0]
  def change
    create_table :employees do |t|
    	t.string:first_name
    	t.string:last_name
    	t.date:birth_date
    	t.string:gender
    	t.integer:salary
    	t.integer:super_id
    	t.integer:branch_id
      t.timestamps
    end
  end
end
