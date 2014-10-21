Sportsband::Application.routes.draw do
  devise_for :admins
  root 'home#index'

  resources :songs, :only => %w[new create show]
end
