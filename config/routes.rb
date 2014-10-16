Rails.application.routes.draw do
  namespace :admin do
    resources :articles, only: [:new, :create]
    resources :reviews, only: [:new, :create]
  end

  resources :articles, only: :show
  resources :reviews, only: :show

  root :to => 'home#index'
end
