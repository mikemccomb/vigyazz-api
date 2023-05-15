Rails.application.routes.draw do
  get "/users" => "users#index"
  get "/users/:id" => "users#show"
  post "/users" => "users#create"
  post "/sessions" => "sessions#create"
  patch "users/:id" => "users#update"
  delete "users/:id" => "users#destroy"
  get "/weather" => "weather#index"
  get "/currencies" => "currencies#index"
  get "/currencies/:entity" => "currencies#show"
end
