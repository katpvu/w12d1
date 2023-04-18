Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  namespace :api, defaults: { format: :json } do
    get '/pokemon/types', to: 'pokemon#types'
    resources :pokemon, only: [:types, :index, :create, :show, :update] do
      resources :items, only: [:index, :create]
    end
    resources :items, only: [:update, :destroy]
  end

  # Defines the root path route ("/")
  # root "articles#index"
end
