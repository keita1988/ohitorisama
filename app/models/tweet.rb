class Tweet < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  has_many   :comments, dependent: :destroy
  belongs_to :user
  has_one_attached :image
  belongs_to_active_hash :tasty
  belongs_to_active_hash :relaxation
  belongs_to_active_hash :under_ground
  belongs_to_active_hash :wifi


  with_options presence: true do
    validates :coffee_price, format: { with: /\A[0-9]+\z/ }
    validates :tasty
    validates :relaxation
    validates :under_ground
    validates :store_name
    validates :address
    validates :wifi
  end

    # ジャンルの選択が「--」の時は保存できないようにする
    validates :tasty_id, :relaxation_id, :under_ground_id, :wifi_id, numericality: { other_than: 1 }
end


