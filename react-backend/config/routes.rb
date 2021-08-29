Rails.application.routes.draw do
  resources :posts
  resources :users
  resources :tags

  resources :sessions, only: [:create]
  resources :registrations, only: [:create]
  get :login, to: 'sessions#login'
  # post :login, to: 'sessions#create'
  delete :logout, to: 'sessions#logout'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
