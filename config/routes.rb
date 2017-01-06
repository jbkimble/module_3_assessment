Rails.application.routes.draw do
  root 'items#index'

  namespace :api do
    namespace :v1 do
      resources :items
    end
  end

  resources :search, only: [:index]
  resources :items,  only: [:index, :show]
  resources :orders, only: [:index, :show]
  resources :users,  only: [:index, :show]
  resources :stores, only: [:show]
end
