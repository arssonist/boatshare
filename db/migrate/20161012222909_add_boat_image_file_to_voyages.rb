class AddBoatImageFileToVoyages < ActiveRecord::Migration[5.0]
  def up
    add_attachment :voyages, :boat_image_file
  end

  def down
    remove_attachment :voyages, :boat_image_file
  end
end
