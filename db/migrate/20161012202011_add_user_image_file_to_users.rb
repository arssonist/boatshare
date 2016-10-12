class AddUserImageFileToUsers < ActiveRecord::Migration[5.0]
  def up
    add_attachment :users, :user_image_file
  end

  def down
    remove_attachment :users, :user_image_file
  end
end
