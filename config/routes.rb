Rails.application.routes.draw do
  resources :users
  resources :wines
  resources :users_wines
  resources :current_user
  # get '/login', to: 'sessions#new'
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
