Rails.application.routes.draw do
  get 'estados/create'
  resources :todos, only: :index do
    resources :estados, only: :create
  end
  resources :estados, only: :index
  root to: 'todos#index'
  devise_for :users
end
