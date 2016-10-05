class AddVoyagePhotoToVoyages < ActiveRecord::Migration[5.0]
  def change
    add_column :voyages, :voyage_image_url, :text
  end
end
