Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # The first way we learned to create routes:
  # get '/birds', to: 'birds#index'
  # get '/birds/:id', to: 'birds#show'

  # Creating routes using a Rails tool:
  # resources :birds # For full CRUD
  resources :birds, only: %i[index show]

  # NOTE: Only generate routes that my API is actually using
end
