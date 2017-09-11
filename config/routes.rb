Rails.application.routes.draw do
  root to: 'campaigns#index'
  resources :campaigns do
    resources :orders, only: [:new, :create]
  end
  resources :orders, only: [:cancel, :show]
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
