Radar::Application.routes.draw do

  root to: 'sessions#new'

  resources :users, only: [:new, :create]

  resources :students, only: [:show, :edit, :update] do 
    collection do
      get "search"
    end
    
    resources :posts, only: [:new, :create, :show]
  end 

  resources :employers, only: [:show, :edit, :update] do 
    collection do
      get "search"
    end

    resources :posts, only: [:new, :create, :show]
  end 
  
  resource :session, only: [:new, :create, :destroy] 

end
