class Category < ApplicationRecord
  has_many :items
  # has_many :item_catetgories
  # has_many :items, through: :item_catetgories
end
