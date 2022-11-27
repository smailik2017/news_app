Rails.application.routes.draw do
  resources :news
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'main/index'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # root 'main#index'
  root 'news#index'

  resources :colors, only: [:create]

  resources :likes, only: [:create]
  
end
