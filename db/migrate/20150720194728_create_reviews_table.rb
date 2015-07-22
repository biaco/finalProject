class CreateReviewsTable < ActiveRecord::Migration
  def change
  	create_table :reviews do |t|
  		t.string :courseplayed
  		t.datetime :dateplayed
  		t.datetime :datereviewed
  		t.integer :Paceofplay
  		t.integer :Conditions
  		t.integer :Staff
  		t.integer :Facilities
  		t.integer :Value
  		t.boolean :Reccomend
  		t.text :Hole1
  		t.text :Hole2
  		t.text :Hole3
  		t.text :Hole4
  		t.text :Hole5
  		t.text :Hole6
  		t.text :Hole7
  		t.text :Hole8
  		t.text :Hole9
  		t.text :Hole10
  		t.text :Hole11
  		t.text :Hole12
  		t.text :Hole13
  		t.text :Hole14
  		t.text :Hole15
  		t.text :Hole16
  		t.text :Hole17
  		t.text :Hole18
  	end
  end
end
