class CreateTweets < ActiveRecord::Migration[6.0]
  def change
    create_table :tweets do |t|
      t.string      :coffee_price,       null: false
      t.integer     :tasty_id,              null: false
      t.integer     :relaxation_id,         null: false
      t.integer     :under_ground_id,       null: false
      t.string      :store_name,         null: false
      t.string      :address,            null: false
      t.references  :user,               null: false, foreign_key: true
      t.timestamps
    end
  end
end
