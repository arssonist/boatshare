class ChangeVesselTypeInVoyages < ActiveRecord::Migration[5.0]
  def change
    remove_column :voyages, :vessel_type, :integer
  end
end
