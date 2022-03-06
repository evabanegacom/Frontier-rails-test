Rails.application.routes.draw do
  resources :player_events
  resources :players
  resources :events
  root 'events#index'
end
