class ChangeDataTypeForBoatImageUrl < ActiveRecord::Migration[5.0]
  def change
    change_column :voyages, :boat_image_url, :text
  end
end
