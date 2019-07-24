Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  # request enpoints for sinatra microservice
  namespace :api do
    namespace :v1 do
      get '/messages', to: "messages#index"
      get '/recent_messages', to: "messages#recent"
      get '/messages/find', to: "messages#show"
      post '/shoutouts', to: 'shoutouts#create'
      get '/webhooks_test', to: 'webhooks#index'
    end
  end

  namespace :api do
    namespace :v1 do
      get '/shoutouts', to: "shoutouts#index"
    end
  end

  get '/', to: 'welcome#index'
end
