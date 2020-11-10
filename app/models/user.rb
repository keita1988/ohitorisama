class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         has_many :tweets
         has_many :comments

         with_options presence: true do
          validates :nickname, length: { maximum: 6 }
         end
        validates :password, length: { minimum: 6 }, confirmation: true
end
