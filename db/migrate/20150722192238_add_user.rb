class AddUser < ActiveRecord::Migration
  def change
  	change_table :reviews do |t|
  		add_column(:reviews, :user_id, :integer)
  end
  end
end
