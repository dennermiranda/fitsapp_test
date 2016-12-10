Rails.application.routes.draw do
  get 'sessions/new'

  #root 'application#hello'
  root 'static_pages#home'
  get  '/help',    to: 'static_pages#help'
  get  '/signup',  to: 'users#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  get  '/newmessage',  to: 'messages#new'
  resources :users
  resources :messages

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
