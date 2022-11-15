Rails.application.routes.draw do
  # verb 'path', to: 'controller#action'
  # READ all restaurants
  get 'restaurants', to: 'restaurants#index'

  # CREATE a restaurant
  get 'restaurants/new', to: 'restaurants#new'
  post 'restaurants', to: 'restaurants#create'

  # READ one restaurant
  get 'restaurants/:id', to: 'restaurants#show', as: :restaurant

  # UPDATE a restaurant
  get 'restaurants/:id/edit', to: 'restaurants#edit', as: :edit_restaurant
  patch 'restaurants/:id', to: 'restaurants#update'

  # DELETE a restaurant
  delete 'restaurants/:id', to: 'restaurants#destroy'

  # resources - atalho pra escrever as 7 rotas do CRUD
  # resources :restaurants
  # resources :restaurants, only: [:index, :show]
  # resources :restaurants, except: [:destroy]
end
