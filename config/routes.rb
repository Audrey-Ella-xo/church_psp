Rails.application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "callbacks" }
  resources :umbrella_boddies
  resources :users
  root 'umbrella_boddies#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
