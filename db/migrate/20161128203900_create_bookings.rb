class CreateBookings < ActiveRecord::Migration[5.0]
  def change
    create_table :bookings do |t|
      t.string :content
      t.string :date
      t.integer :price
      t.string :status
      t.integer :renter_id
      t.integer :celeb_id

      t.timestamps
    end
  end
end
