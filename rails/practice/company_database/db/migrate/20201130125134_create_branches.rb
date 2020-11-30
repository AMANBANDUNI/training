class CreateBranches < ActiveRecord::Migration[6.0]
  def change
    create_table :branches do |t|
    	t.string=branch_name
    	t.int=mgr_id
    	t.date=mgr_start_date
    	t.belongs_to 
      t.timestamps
    end
  end
end
