class AddUseIdToReleases < ActiveRecord::Migration[5.2]
  def change
    add_column :releases, :user_id, :string
  end
end
