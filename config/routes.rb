Rails.application.routes.draw do
  resources :item_categories
  resources :categories
  resources :appointments
  resources :items
  resources :carts
  resources :users

  get 'usercarts/:id', to: 'carts#getUserCarts', as: 'usercarts'
  get 'availableitems', to: 'items#getAvailableItems', as: 'availableitemsABC'



  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
