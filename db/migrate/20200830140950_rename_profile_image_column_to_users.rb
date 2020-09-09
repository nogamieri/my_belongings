class RenameProfileImageColumnToUsers < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :Profile_image_id, :profile_image_id
  end
end
