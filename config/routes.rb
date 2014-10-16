Rails.application.routes.draw do
  resources :articles, only: :show
  resources :reviews, only: :show

  root :to => 'home#index'
end
