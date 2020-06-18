class RemoveUseridToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :messages, :user_id, :integer
    remove_column :users, :user_id, :integer
  end
end
