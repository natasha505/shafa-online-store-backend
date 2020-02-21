class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :img, :size, :brand, :price, :color, :condition, :details, :status, :carts, :category
  # has_many :item_categories
  # has_many :categories, through: :item_categories
end
