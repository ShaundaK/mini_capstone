Rails.application.routes.draw do
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"
  namespace :api do
    get "/products" => "products#index"
    get "/first_piece" => "products#first_piece"
    get "/second_piece" => "products#second_piece"
    get "/third_piece" => "products#third_piece"
  end
end
