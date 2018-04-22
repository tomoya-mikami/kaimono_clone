Rails.application.routes.draw do
  resources :recipes
  resources :tag_recipes
  resources :shops
  resources :items
  resources :tags
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "static#index"
end
