Rails.application.routes.draw do
  root 'search#index'

  resources :bikes, only: :show
  resources :bookings, only: [:new, :create, :show]
  resources :search, only: :index
end
