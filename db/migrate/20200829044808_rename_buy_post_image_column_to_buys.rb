class RenameBuyPostImageColumnToBuys < ActiveRecord::Migration[5.2]
  def change
    rename_column :buys, :buy_post_image, :buy_post_image_id
  end
end
