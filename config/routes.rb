Rails.application.routes.draw do
  get 'todos/index'
  root to: 'todos#index'
  resources :todos, only: :index
  devise_for :users
end
