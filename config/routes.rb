Rails.application.routes.draw do
  resources :abunai_posts
  resources :posts
  resources :users, only: %i(new create)
  root "posts#index"
end
