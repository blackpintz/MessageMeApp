class AddUseridToMessages < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :user_id, :integer
  end
end
