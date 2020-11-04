Rails.application.routes.draw do
  root "page#index"
  get "/connect", to: "connects#index"
end
