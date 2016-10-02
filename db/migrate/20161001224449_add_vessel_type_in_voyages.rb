class AddVesselTypeInVoyages < ActiveRecord::Migration[5.0]
  def change
      add_column :voyages, :vessel_type, :string
  end
end
