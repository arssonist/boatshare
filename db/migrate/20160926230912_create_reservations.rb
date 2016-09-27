class CreateReservations < ActiveRecord::Migration[5.0]
  def change
    create_table :reservations do |t|
      t.integer :passenger_id
      t.integer :voyage_id

      t.timestamps
    end
  end
end
