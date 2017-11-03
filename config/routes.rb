Rails.application.routes.draw do

  resources :password_resets,     only: [:new, :create, :edit, :update]
  resources :financial_records

  resources :messages do
    resources :comments
  end



  resources :homes do
    collection do
      get 'remove'
      get 'removeSelf'
      get 'join'
    end
  end

  resources :grocery_lists do
    collection do
      post 'bought'
    end
  end
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
  post '/grocery_list/:id/bought', to: 'grocery_list#bought'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
