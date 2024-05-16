require 'api_constraints'

Rails.application.routes.draw do
  namespace :api,defaults: {format: 'json'} do
    scope module: :v1,
          constraints: ApiConstraints.new(version: 1, default: false) do
      resources :articles
    end
    scope module: :v2,
          constraints: ApiConstraints.new(version: 2, default: true) do
      resources :articles
    end


  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  end
end

#estudo/api/v1/articles: default = false version = 1
#estudo/api/v2/articles: default = true version = 2

#blog/api/articles
