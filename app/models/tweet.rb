class Tweet < ApplicationRecord
  has_many   :comments
  belongs_to :user
  has_one_attached :image

  with_options presence: true do
    validates :coffee_price
    validates :tasty
    validates :relaxation
    validates :under_ground
    validates :store_name
    validates :address
end


