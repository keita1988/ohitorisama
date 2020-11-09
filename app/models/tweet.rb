class Tweet < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  # belongs_to :tasty
  has_many   :comments
  belongs_to :user
  has_one_attached :image
  belongs_to_active_hash :tasty
  belongs_to_active_hash :relaxation
  belongs_to_active_hash :under_ground


  with_options presence: true do
    validates :coffee_price, format: { with: /\A[0-9]+\z/ }
    validates :tasty
    validates :relaxation
    validates :under_ground
    validates :store_name
    validates :address
  end

    # ジャンルの選択が「--」の時は保存できないようにする
    validates :tasty_id, :relaxation_id, :under_ground_id, numericality: { other_than: 1 }
end


