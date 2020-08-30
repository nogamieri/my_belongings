class CreateBuys < ActiveRecord::Migration[5.2]
  def change
    create_table :buys do |t|
      t.string :buy_image_id
      t.string :buy_caption
      t.text :buy_message

      t.timestamps
    end
  end
end
