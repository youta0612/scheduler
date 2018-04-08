Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post '/login' => 'teams#login'
  resources :games
  resources :teams
  resources :members
  resources :participants
  root 'teams#index'
end
