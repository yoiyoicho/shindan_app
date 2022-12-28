Rails.application.routes.draw do
  resources :abunai_posts
  resources :posts
  resources :users, only: %i(new create)
  resources :user_sessions, only: %i(new create destroy)
  root "users#new"
end
