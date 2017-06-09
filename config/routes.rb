Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: "users/omniauth_callbacks" }

  get 'index', to: 'witchers#index', as: :witchers_index
  root 'witchers#index'
  resource :user
  get 'user/friends', to: 'users#friends'
end
