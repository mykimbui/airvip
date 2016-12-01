class AddBookingsToReviews < ActiveRecord::Migration[5.0]
  def change
    add_reference :reviews, :bookings, foreign_key: true
  end
end
