Rails.application.routes.draw do
  get 'users' => "users#index"
  get 'users/add' => "users#new"
  post 'users' => "users#create"
end
