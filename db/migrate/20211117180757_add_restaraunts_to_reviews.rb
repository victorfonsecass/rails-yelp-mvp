class AddRestarauntsToReviews < ActiveRecord::Migration[6.1]
  def change
    add_reference :reviews, :restaurant, foreign_key: true
  end
end
