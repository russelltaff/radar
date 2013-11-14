Radar::Application.routes.draw do

  root to: 'users#welcome'


  resources :users, only: [:new, :create] do
    collection do
      get 'welcome'
    end
  end

  resources :students, only: [:show, :edit, :update] do 
    resources :posts, except: [:index, :edit, :update]
  end 

  resources :employers, only: [:show, :edit, :update] do 
    resources :posts, except: [:index, :edit, :update]
  end 

  resources :posts, only: [:show, :index]
  
  resource :session, only: [:new, :create, :destroy] 

end
