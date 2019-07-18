Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/dashboard", to: "dashboard#show"

  get "/privacy_policy", to: "privacy#show"

  # app authenticate with amazon
  get "/register", to: "register#show"
  
end
