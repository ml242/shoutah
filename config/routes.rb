Shouter::Application.routes.draw do
  
  resource :session, only: [:new, :create, :destroy]
  resource :dashboard, only: [:show]

  resources :users, only: [:new, :create, :show]
  resources :shouts, only: [:create, :show]

  root to: 'homes#show', via: :get

end
