class AddReviewToCourse < ActiveRecord::Migration
  def change
  		add_column :courses, :review, :text
  end
end
