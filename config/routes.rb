Rails.application.routes.draw do
  root 'home#index'

  post "oauth/callback", to: "oauths#callback"
  get "oauth/callback", to: "oauths#callback"
  get "oauth/:provider", to: "oauths#oauth", as: :auth_at_provider
  
  resources :posts, only: %i[create show destroy]
  resources :stamps, only: %i[create]
end
