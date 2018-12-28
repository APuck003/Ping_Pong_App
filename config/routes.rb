Rails.application.routes.draw do
  resources :player_games
  resources :comments
  resources :players
  resources :games
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
