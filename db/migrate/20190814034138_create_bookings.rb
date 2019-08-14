class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.datetime :starts_at
      t.integer :hearo_id

      t.timestamps
    end
  end
end
