Rails.application.routes.draw do
  get 'admin/penalties/list' => "penalties#index"
  get 'admin/penalties/add' => "penalties#new"
  get 'admin/penalties/u/:target_user_id' => "penalties#show"
  get 'admin/penalties/destroy'

  get 'users' => "users#index"
  get 'users/add' => "users#new"
  post 'users' => "users#create"
end
