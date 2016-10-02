class AddBoatImageUrlInVoyages < ActiveRecord::Migration[5.0]
  def change
      add_column :voyages, :boat_image_url, :string
  end
end
