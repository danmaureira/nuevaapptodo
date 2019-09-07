Rails.application.routes.draw do
  get 'estados/create'
  resources :todos, only: :index do
    resources :estados, only: :create
  end
  root to: 'todos#index'
  devise_for :users
end
