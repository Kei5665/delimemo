Rails.application.routes.draw do
  root 'home#index'

  post "oauth/callback", to: "oauths#callback"
  get "oauth/callback", to: "oauths#callback"
  get "oauth/:provider", to: "oauths#oauth", as: :auth_at_provider
  get 'log_out', to: 'user_sessions#destroy', as: 'log_out'
  
  resources :posts, only: %i[create show destroy] do
    member do
      get :stamped
    end
  end
  resources :stamps, only: %i[create]
  resources :users, only: %i[edit update]
end
