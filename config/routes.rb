Shouter::Application.routes.draw do
  
  resource :session, only: [:new, :create, :destroy]
  resource :dashboard, only: [:show]
  resource :search, only: [:show]

  resources :users, only: [:new, :index, :create, :show] do
    post 'follow' => 'following_relationships#create'
    delete 'follow' => 'following_relationships#destroy'
  end

  resources :shouts, only: [:show]
  resources :text_shouts, only: [:create]
  resources :photo_shouts, only: [:create]
  resources :hashtags, only: [:show]

  root to: 'homes#show', via: :get

end
