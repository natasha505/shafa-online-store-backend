class User < ApplicationRecord
  has_many :carts
  has_many :items, through: :carts
  # has_many :appointments, through: :carts

  validates :email, presence: true
  validates :email, uniqueness: true
end
