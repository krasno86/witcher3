Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: "users/omniauth_callbacks" }

  get 'witchers/index', to: 'witchers#index'
  root 'witchers#index'

end
