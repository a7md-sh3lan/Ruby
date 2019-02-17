Rails.application.routes.draw do
  resources :friends
  resources :groups do
  post 'getName'
  post 'addFriend'
  delete 'deletefriend'
end
  # devise_for :users, :controllers => {:registrations => "registrations"}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pages#index'

  devise_scope :user do
    get 'login', to: 'devise/sessions#new'
  end

  devise_scope :user do
    get 'signup', to: 'devise/registrations#new'
  end

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  # get 'login', to: 'logins#new'
  # get 'login/create', to: 'logins#create', as: :create_login
  # get 'login', to: 'logins#new'
  # get 'login/create', to: 'logins#create', as: :create_login

end