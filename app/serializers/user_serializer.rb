class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :password, :location, :img, :admin, :items, :carts#, :appointments
end
