class AddVoyageImageFileToVoyages < ActiveRecord::Migration[5.0]
  def up
    add_attachment :voyages, :voyage_image_file
  end

  def down
    remove_attachment :voyages, :voyage_image_file
  end
end
