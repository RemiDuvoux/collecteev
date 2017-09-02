Rails.application.routes.draw do
  devise_for :users
  root to: 'campaigns#index'
  resources :campaigns
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
