Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'books#index'

  resources :books, only: [:new, :create, :show ,:index] 
  resources :favorites, only: [:create] 
  resources :notes, only: [:create, :edit, :update, :destroy] 
  
  resources :users, only: [:new, :create]
  resource :session, only: [:new, :create, :destroy]

  get 'users/favorites', to: 'users#favorites'

end
