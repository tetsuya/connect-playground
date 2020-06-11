Rails.application.routes.draw do
  get "/ping", to: "ping#index"
  get "/connect", to: "connects#index"
end
