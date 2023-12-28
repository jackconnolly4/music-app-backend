Rails.application.routes.draw do

  # artists action
  get "/artists" => "artists#index"
  get "/artists/:id" => "artists#show"
  post "/artists" => "artists#create"
  patch "/artists/:id" => "artists#update"
  delete "/artists/:id" => "artists#destroy"

  #albums actions
  get "/albums" => "albums#index"
  get "/albums/:id" => "albums#show"
  post "/albums" => "albums#create"
  patch "/albums/:id" => "albums#update"
  delete "/albums/:id" => "albums#destroy"

  post "/users" => "users#create"
  post "/sessions" => "sessions#create"

  post "/collection" => "collections#create"
  get "/collection" => "collections#index"
  delete "/collection/:id" => "collections#destroy"

  post "/favorite_artists" => "favorite_artists#create"
  get "/favorite_artists" => "favorite_artists#index"
  delete "/favorite_artists/:id" => "favorite_artists#destroy"
end
