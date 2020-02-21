class Item < ApplicationRecord
  has_many :carts
  belongs_to :category
  # has_many :item_categories
  # has_many :categories, through: :item_category

end
