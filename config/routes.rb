Radar::Application.routes.draw do


  resources :users, only: [:new, :create]

  resources :students, only: [:show, :edit, :update] do 
    collection do
      get "search"
    end
    
    resources :posts, except: [:index, :edit, :update]
  end 

  resources :employers, only: [:show, :edit, :update] do 
    collection do
      get "search"
    end

    resources :posts, except: [:index, :edit, :update]
  end 

  resources :posts, only: [:show, :index]
  
  resource :session, only: [:new, :create, :destroy] 


end
