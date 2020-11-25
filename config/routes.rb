Rails.application.routes.draw do
  get 'map_stops/:id', to: 'map_stops#show', as: 'stops'
  get 'map_routes/index'
  get 'map_routes/new', to: 'map_routes#new', as: 'new'
  post 'map_routes', to:'map_routes#create'
  get 'map_routes/show'

  root 'map_routes#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
