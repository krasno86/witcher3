Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # resources :witchers, only: [:show, :edit, :update, :destroy]
  # resource :witcher
  get 'witchers/index', to: 'witchers#index'
  root 'witchers#index'

end
