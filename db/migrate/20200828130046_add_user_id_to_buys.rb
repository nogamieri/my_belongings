class AddUserIdToBuys < ActiveRecord::Migration[5.2]
  def change
    add_column :buys, :user_id, :integer
  end
end
