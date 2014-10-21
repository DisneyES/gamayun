Rails.application.routes.draw do
  namespace :admin do
    resources :articles, only: [:new, :create]
    resources :reviews, only: [:new, :create]
    resources :sessions, only: [:new, :create] do
      delete :destroy, on: :collection
    end

    root to: "sessions#new"
  end

  resources :articles, only: [:show, :index]
  resources :reviews, only: [:show, :index]

  root :to => 'home#index'
end
