Rails.application.routes.draw do
 resources :users, only: [:create] 
 resources :posts, only: [:index]
 get "/sign_in", to: "login#sign_in"
 get "/sign_out", to: "login#sign_out"
  # root "articles#index"
end
