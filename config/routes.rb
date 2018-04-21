Rails.application.routes.draw do
  # resources :users
  # resources :links
  # resources :orders
  # resources :sites
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post 'login', to: 'login#login'
  post 'user_links', to: 'users#user_links'
end
