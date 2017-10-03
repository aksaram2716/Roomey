Rails.application.routes.draw do
  get 'sessions/new'

  root "home#show", page: "home"
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  resources :accounts

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
