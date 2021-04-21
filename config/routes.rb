Rails.application.routes.draw do
  root 'search#index'

  resources :bikes, only: :show
  resources :search, only: :index
end
