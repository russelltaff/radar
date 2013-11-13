Radar::Application.routes.draw do

  root to: 'sessions#new'

  resources :users, only: [:new, :create]

  resources :students, only: [:show, :edit, :update] do 
      resources :posts, only: [:new, :create]
  end 

  resources :employers, only: [:show, :edit, :update] do 
      resources :posts, only: [:new, :create, :show]
  end 
  
  resource :session, only: [:new, :create, :destroy] 

end
