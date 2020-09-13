class RemoveUserIdFromReleases < ActiveRecord::Migration[5.2]
  def change
    remove_column :releases, :user_id, :string
  end
end
