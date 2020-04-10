Rails.application.routes.draw do
  get 'admin/penalties/list', to: 'penalties#index', as: 'penalties'
  get 'admin/penalties/u/:target_user_id', to: 'penalties#show', as: 'penalty'
  post 'admin/penalties/u/:target_user_id', to: 'penalties#create'
  get 'admin/penalties/destroy', to: 'penalties#destroy'

  get 'users', to: 'users#index'
  get 'users/add', to: 'users#new', as: 'user'
  post 'users', to: 'users#create'
end
