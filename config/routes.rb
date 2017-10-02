Rails.application.routes.draw do
  root "home#show", page: "home"
  resources :accounts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
