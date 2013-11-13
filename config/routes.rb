Radar::Application.routes.draw do

  root to: 'sessions#new'

  resources :users, only: [:new, :create]

  resources :students, only: [:show, :edit, :update] do 
    member do
      get "search"
    end
    
    resources :posts
  end 

  resources :employers, only: [:show, :edit, :update] do 
    member do
      get "search"
    end

    resources :posts 
  end 
  
  resource :session, only: [:new, :create, :destroy] 

end
