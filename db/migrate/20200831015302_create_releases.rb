class CreateReleases < ActiveRecord::Migration[5.2]
  def change
    create_table :releases do |t|
      t.string :release_image_id
      t.string :release_caption
      t.text :release_message

      t.timestamps
    end
  end
end
