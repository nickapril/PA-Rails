Rails.application.routes.draw do
  resources :users

  get 'users/index'

  get 'home/index'

  get 'users/new'
  root 'home#index'
  get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
