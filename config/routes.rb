Rails.application.routes.draw do
  get 'home/index'
  # get 'sessions/new'
  # get 'sessions/create'
  # get 'sessions/destroy'
  # resources :users
  # get 'static_pages/home'
  # get 'static_pages/help'
  root 'home#index'
  resources :account_activations, only: [:edit]
  resources :sessions, only: [:new, :create, :destroy]
  resources :users
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'  

  	
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  
end
