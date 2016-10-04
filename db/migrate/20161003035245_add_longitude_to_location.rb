class AddLongitudeToLocation < ActiveRecord::Migration[5.0]
  def change
    add_column :voyages, :longitude, :float
    add_column :voyages, :latitude, :float
  end
end
