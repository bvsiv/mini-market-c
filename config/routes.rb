Rails.application.routes.draw do
  namespace :merchants do
    root 'dashboard#show'

    get 'login', to: 'sessions#new'
    get 'logout', to: 'sessions#destroy'

    resources :sessions, only: [:create]
    resources :merchants, only: [:new, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  end
  namespace :customers do
    get 'signup'  => 'customers#new' 
    resources :customers

    get 'login'  => 'sessions#new'
    post 'login' => 'sessions#create'
    delete 'logout' => 'sessions#destroy'

    get '/panel' => 'panel#index'
  end
end
