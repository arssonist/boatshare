class AddColumnnsToReservations < ActiveRecord::Migration[5.0]
  def change
    add_column :reservations, :seat_location, :string
    add_column :reservations, :life_jacket_size, :string
    add_column :reservations, :need_accessibility, :string
  end
end
