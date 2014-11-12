Rails.application.routes.draw do

  root                                   'static_pages#home'
  get 'help'                          => 'static_pages#help'
  get 'regions/index'                 => 'regions#index'
  get 'regions/show'                  => 'regions#show'
  get 'underground_region/index'      => 'underground_region#index'
  get 'underground_region/show'       => 'underground_region#show'

  resources :regions, :underground_region, only: [:index, :show]
end
