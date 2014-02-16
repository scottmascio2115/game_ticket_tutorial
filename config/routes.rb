GameTicket::Application.routes.draw do
  get "users/new"
  get "users/create"
  get "users/show"
  root 'projects#index'

  resources :projects do
    resources :tickets
  end

  resources :users
  get "/signin", to: "sessions#new"
  post "/signin", to: "sessions#create"
end

