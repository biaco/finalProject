class ChangeColumnName < ActiveRecord::Migration
  def change
  	change_table :courses do |t|
  		t.rename :public, :public_course
  	end
  end
end
