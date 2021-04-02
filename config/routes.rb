Rails.application.routes.draw do
  root "page#index"
  get "/coffees", to: "coffees#index"
end
