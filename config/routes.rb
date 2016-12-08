Rails.application.routes.draw do
  #root 'application#hello'
  get 'static_pages/home'
  get 'static_pages/help'
  get  '/signup',  to: 'users#new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
