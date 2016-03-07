class AddTweetTextToTweets < ActiveRecord::Migration
  def change
    add_column :tweets, :tweet_text, :string
  end
end
