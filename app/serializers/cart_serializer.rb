class CartSerializer < ActiveModel::Serializer
  attributes :id, :total, :user_id, :item_id, :complete, :item, :user
end
