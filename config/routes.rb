Rails.application.routes.draw do
  namespace :merchants do
    root 'dashboard#show'

    get 'login', to: 'sessions#new'
    get 'logout', to: 'sessions#destroy'

    resources :sessions, only: [:create]
    resources :merchants, only: [:new, :create]

    get 'products' => 'products#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  end
  namespace :customers do
    get 'signup'  => 'customers#new'
    resources :customers

    get 'login'  => 'sessions#new'
    post 'login' => 'sessions#create'
    get'/logout' => 'sessions#destroy'

    get '/panel' => 'panel#index'
    get 'products' => 'products#index'

    get '/products/:id' => 'products#show', as: 'product_details'

    get '/products/:id/offer/new'  => 'offers#new', as: 'products_new_offer'
    post '/products/:id/offer/new' => 'offers#create'
  end
end
