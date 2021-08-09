Rails.application.routes.draw do
  root to: 'talks#index'
  resources :talks, only: [:index, :create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
