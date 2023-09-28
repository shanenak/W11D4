Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # config/routes.rb
  namespace :api, defaults: { format: :json } do
    # define routes here to include them in the api namespace
    resources :pokemon, only: [:show, :update] do 
      resources :items, only: [:index, :create]
      collection do
        get "types"
      end
    end
    

    resources :pokemon, only: [:index, :create]
    
    resources :items, only: [:update, :destroy]

  end

end
