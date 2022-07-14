Rails.application.routes.draw do
  resources :students
  resources :teachers
  resources :dance_classes
  resources :users
  get "/me", to: "users#show"
  post "/login", to: "sessions#create"
  post "/signup", to: "users#create"
  delete "/logout", to: "sessions#destroy"
end
