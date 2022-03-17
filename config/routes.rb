Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :games, only: %w[new]
  resources :attempts, only: %w[create]
end
