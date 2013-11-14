Radar::Application.routes.draw do

  root to: 'sessions#new'

  resources :users, only: [:new, :create]

  resources :students, only: [:show, :edit, :update] do 
    member do
      get "search"
    end
    
    resources :posts, except: [:index, :edit, :update]
  end 

  resources :employers, only: [:show, :edit, :update] do 
    member do
      get "search"
    end

    resources :posts, except: [:index, :edit, :update]
  end 
  
  resource :session, only: [:new, :create, :destroy] 

  resources :posts, only: [:index]

end
