Rails.application.routes.draw do
  resources :users
  get "/ping", to: "ping#index"
  get "/connect", to: "connects#index"
end
