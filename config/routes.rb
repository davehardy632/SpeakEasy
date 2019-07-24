Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/api/v1/webhooks_test', to: 'webhooks#index'
  
  # request enpoints for sinatra microservice
  namespace :api do
    namespace :v1 do
      get '/messages', to: "messages#index"
      get '/messages/find', to: "messages#show"
      post '/shoutouts', to: 'shoutouts#create'
    end
  end

  namespace :api do
    namespace :v1 do
      get '/shoutouts', to: "shoutouts#index"
    end
  end
end
