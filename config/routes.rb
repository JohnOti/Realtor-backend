Rails.application.routes.draw do
  resources :properties
  resources :users
  patch "/birds/:id/like", to: "birds#increment_likes"
  
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#delete"
  get "/me", to: "users#show"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
