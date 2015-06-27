Rails.application.routes.draw do
  mount Payola::Engine => '/payola', as: :payola
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  mount Upmin::Engine => '/admin'
  root to: 'visitors#index'
  devise_for :users
  resources :users
end
