class AddStateToFriendshipps < ActiveRecord::Migration
  def change
    change_column :friendshipps, :state, :string, default: "pending"
  end
end
