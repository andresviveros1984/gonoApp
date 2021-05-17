Rails.application.routes.draw do
  root 'comments#index'
  # get 'users/new', to: 'users#new'

  get 'comments/new', to: 'comments#new' #to create new messages and will use the same controller to handle them
  get 'about', to: 'pages#about'
  resources :users, :only => [:new, :create, :destroy, :update]
end
