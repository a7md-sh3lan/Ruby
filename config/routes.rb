Rails.application.routes.draw do
  resources :friends
  resources :groups do
  post 'getName'
  post 'addFriend'
  delete 'deletefriend'
end
  devise_for :users, :controllers => {:registrations => "registrations"}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pages#index'

  devise_scope :user do
    get 'login', to: 'devise/sessions#new'
  end
    resources :orders
    resources :gruops do
      resources :members
          end
    
    resources :ordermembers
    root to: 'orders#index'
  
    get '/invitedfriend/:id', to: 'orders#invitedfriends', as: 'invitedfriends'
    get '/joinedfriend/:id', to: 'orders#joinedfriends', as: 'joinedfriends'
  devise_scope :user do
    get 'signup', to: 'devise/registrations#new'
  end
end