Rails.application.routes.draw do
  resources :users

  get 'users/index'

  get 'home/index'

  get 'users/new'
  root 'home#index'
  get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  get '/courses', 		to: 'courses#show'
  get '/instructors', 	to: 'instructors#show'
  get '/subjects', 		to: 'subjects#show'
  #post '/courses', 	to: 'courses#new'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
