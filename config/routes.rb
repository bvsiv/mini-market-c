Rails.application.routes.draw do
  root 'dashboard#show'

  namespace :merchants do
    get 'login', to: 'sessions#new'
    get 'logout', to: 'sessions#destroy'

    resources :sessions, only: [:create]

    get 'signup' => 'merchants#new'
    resources :merchants, only: [:index, :new, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  end
  namespace :customers do
    get 'signup'  => 'customers#new'
    resources :customers

    get 'login'  => 'sessions#new'
    post 'login' => 'sessions#create'
    get 'logout' => 'sessions#destroy'
  end
end
