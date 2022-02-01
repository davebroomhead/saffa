class AddDamIdToBookings < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :dam_id, :integer
  end
end
