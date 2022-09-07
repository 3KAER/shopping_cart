Rails.application.routes.draw do
  get 'sessions/new'
  get 'users/new'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get 'home/about'

  root 'home#index'

 get "home/help"
 get "home/about"
 get "home/contact"
 get "/login", to: "sessions#new"
post "/login", to: "sessions#create"
delete "/logout", to: "sessions#destroy"
 resources :users
end