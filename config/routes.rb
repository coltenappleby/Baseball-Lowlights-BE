Rails.application.routes.draw do
  post 'users/login', to: 'users#login'

  resources :likes
  resources :comments
  resources :posts
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
