Rails.application.routes.draw do

  resources :password_resets,     only: [:new, :create, :edit, :update]

  resources :homes
  resources :grocerylist
  resources :users

  get 'homes/new'

  get 'homes/create'

  get 'homes/destroy'

  get 'homes/edit'

  get 'homes/update'

  get 'users/new'

  get 'sessions/new'

  root "home#show", page: "home"

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'

  get '/grocerylist', to: 'grocerylist#new'



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
