class RemoveVoyageImageUrlFromVoyages < ActiveRecord::Migration[5.0]
  def change
    remove_column :voyages, :voyage_image_url, :string
  end
end
