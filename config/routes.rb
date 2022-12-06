Rails.application.routes.draw do
  resources :properties

  resources :users
  patch "/properties/:id/like", to: "properties#increment_likes"
  
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  get "/me", to: "users#show"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # get "/properties" , to: "properties#index"
end
