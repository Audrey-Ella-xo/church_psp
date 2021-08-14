Rails.application.routes.draw do
  resources :umbrella_boddies
  root 'umbrella_boddies#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
