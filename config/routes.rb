Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do 
      resources :users, only: [:create, :index, :show]
      post '/login', to: 'auth#create'
      get '/profile', to: 'users#profile'
      resources :organisms
      resources :sightings
      resources :comments
    end
  end
end
