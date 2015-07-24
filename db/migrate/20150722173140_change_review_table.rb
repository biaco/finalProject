class ChangeReviewTable < ActiveRecord::Migration
  def change
  	change_table :reviews do |t|
  		t.rename :Paceofplay, :paceofplay
  		t.rename :Conditions, :conditions
  		t.rename :Staff, :staff
  		t.rename :Facilities, :facilities
  		t.rename :Value, :value
  		t.rename :Reccomend, :recommend
  		t.rename :Hole1, :hole1
  		t.rename :Hole2, :hole2
  		t.rename :Hole3, :hole3
  		t.rename :Hole4, :hole4
  		t.rename :Hole5, :hole5
  		t.rename :Hole6, :hole6
  		t.rename :Hole7, :hole7
  		t.rename :Hole8, :hole8
  		t.rename :Hole9, :hole9
  		t.rename :Hole10, :hole10
  		t.rename :Hole11, :hole11
  		t.rename :Hole12, :hole12
  		t.rename :Hole13, :hole13
  		t.rename :Hole14, :hole14
  		t.rename :Hole15, :hole15
  		t.rename :Hole16, :hole16
  		t.rename :Hole17, :hole17
  		t.rename :Hole18, :hole18
  	end
  end
end
