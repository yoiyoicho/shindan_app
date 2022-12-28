Rails.application.routes.draw do
  resources :abunai_posts
  resources :posts
  root "posts#index"
end
