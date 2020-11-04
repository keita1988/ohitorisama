class CreateTweets < ActiveRecord::Migration[6.0]
  def change
    create_table :tweets do |t|
      t.string      :coffee_price,       null: false
      t.integer     :tasty,              null: false
      t.integer     :relaxation,         null: false
      t.integer     :under_ground,       null: false
      t.string      :store_name,         null: false
      t.string      :address,            null: false
      t.references  :user,               null: false, foreign_key: true
      t.timestamps
    end
  end
end
