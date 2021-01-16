class ChangeColumnPhoneNumberOfUsers < ActiveRecord::Migration[6.0]
  def change
  	change_column :users, :phone_number, :string
  	change_column :users, :gender, :string

  	# change_column :users do |t|
  	# end
  end
end
