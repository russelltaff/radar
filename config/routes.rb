Radar::Application.routes.draw do

  root to: 'sessions#new'

  resources :users, only: [:new, :create]

  resources :students, only: [:show, :edit, :update]

  resources :employers, only: [:show, :edit, :update]
  
  resource :session, only: [:new, :create, :destroy] 


end
