class RemoveBoatImageUrlFromVoyages < ActiveRecord::Migration[5.0]
  def change
    remove_column :voyages, :boat_image_url, :string
  end
end
