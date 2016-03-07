class CreateFriendshipps < ActiveRecord::Migration
  def change
    create_table :friendshipps do |t|
      t.string :user_id
      t.string :friend_id
      t.string :state
      t.datetime :friended_at

      t.timestamps null: false
    end
  end
end
