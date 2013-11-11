Radar::Application.routes.draw do
  root to: 'sessions#new'

  resources :users, only: [:new, :create, :show, :edit]
  resource :session, only: [:new, :create, :destroy] 
end
