class AddWifiIdToTweets < ActiveRecord::Migration[6.0]
  def change
    add_column :tweets, :wifi_id, :integer
  end
end
