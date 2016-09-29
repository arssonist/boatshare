class AddLocationToVoyage < ActiveRecord::Migration[5.0]
  def change
    add_column :voyages, :location, :string
    add_column :voyages, :description, :string
    add_column :voyages, :vessel_type, :integer
    add_column :voyages, :start_time, :datetime
    add_column :voyages, :end_time, :datetime
    add_column :voyages, :capacity, :integer

  end
end
