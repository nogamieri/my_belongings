class RenameImageIdColumnToBuys < ActiveRecord::Migration[5.2]
  def change
    rename_column :buys, :buy_image_id, :buy_post_image
  end
end
