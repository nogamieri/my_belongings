class AddBuyIdToReleases < ActiveRecord::Migration[5.2]
  def change
    add_column :releases, :buy_id, :string
  end
end
