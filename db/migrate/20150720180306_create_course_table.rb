class CreateCourseTable < ActiveRecord::Migration
  def change
  	create_table :courses do |t|
		t.string :coursename
  		t.float :lat 
  		t.float :lng
      t.string :address
  		t.boolean :public
  		t.integer :numberOfholes
  		t.integer :coursehandicap
  		t.text :description 
  	end
  end
end
