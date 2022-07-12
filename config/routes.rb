Rails.application.routes.draw do
  root 'home#index'
  resources :posts, only: %i[create show destroy]
  resources :stamps, only: %i[create]
end
