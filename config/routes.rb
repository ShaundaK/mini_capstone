Rails.application.routes.draw do

  get "/products" => "products#index"
  get "/products/new" => "products#new"
  post "/products" => "products#create"
  get "/products/:id" => "products#show"
  get "/products/:id/edit" => "products#edit"
  patch "/products/:id" => "products#update"


  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"
  namespace :api do
    #index
    get "/products" => "products#index"
    get "/products/:id" => "products#show"
    post "products" => "products#create"
    patch "products/:id" => "products#update"
    delete "/products/:id" => "products#destroy"

    post "/users" => "users#create"
    post "/sessions" => "sessions#create"

    post "/orders" => "orders#create"
    get "/orders" => "orders#index"

    post "carted_products" => "carted_products#create"
    get "carted_products" => "carted_products#index"
  end
end
