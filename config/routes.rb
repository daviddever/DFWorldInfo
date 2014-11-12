Rails.application.routes.draw do

  root                     'static_pages#home'
  get 'help'            => 'static_pages#help'
  get 'regions/index'   => 'regions#index'
  get 'regions/show'    => 'regions#show'

  resources :regions, only: [:index, :show]
end
