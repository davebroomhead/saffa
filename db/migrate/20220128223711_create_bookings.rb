class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.datetime :date_time
      t.string :car_reg

      t.timestamps
    end
  end
end
