Radar::Application.routes.draw do
<<<<<<< HEAD
  root to: 'sessions#new'

  resources :users, only: [:new, :create, :show]
  resource :session, only: [:new, :create, :destroy] 
=======

>>>>>>> master
end
