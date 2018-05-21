Rails.application.routes.draw do
  namespace :merchants do
    root 'dashboard#show'

    get 'login', to: 'sessions#new'
    get 'logout', to: 'sessions#destroy'

    resources :sessions, only: [:create]
    resources :merchants, only: [:new, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  end
end
