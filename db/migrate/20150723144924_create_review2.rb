class CreateReview2 < ActiveRecord::Migration
  def change
  	add_column :reviews, :gen_review, :text
  end
end
