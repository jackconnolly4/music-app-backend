Rails.application.routes.draw do

  # artists action
  get "/artists" => "artists#index"
  get "/artists/:id" => "artists#show"
  post "/artists" => "artists#create"
  patch "/artists/:id" => "artists#update"
  delete "/artists/:id" => "artists#destroy"

end
