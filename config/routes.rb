Rails.application.routes.draw do
  get 'restaurants/new', as: :new_restaurant
  post 'restaurants', to: 'restaurants#create'
  get 'restaurants', to: 'restaurants#index'
  get 'restaurants/:id', to: 'restaurants#show', as: :restaurant
  get 'restaurants/:id/edit', to: 'restaurants#edit', as: :edit_restaurant
  patch 'restaurants/:id', to: 'restaurants#update'
  delete 'restaurants/:id', to: 'restaurants#destroy', as: :delete_restaurant
  get 'restaurants/:id/reviews/new', to: 'reviews#new'
  root 'restaurants#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
