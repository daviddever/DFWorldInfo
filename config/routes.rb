Rails.application.routes.draw do

  get 'artifact/index'

  get 'artifact/show'

  root                                   'static_pages#home'
  get 'help'                          => 'static_pages#help'
  get 'regions/index'                 => 'regions#index'
  get 'regions/show'                  => 'regions#show'
  get 'underground_region/index'      => 'underground_region#index'
  get 'underground_region/show'       => 'underground_region#show'
  get 'site/index'                    => 'site#index'
  get 'site/show'                     => 'site#show'
  get 'artifact/index'                => 'artifact#index'
  get 'artifact/show'                 => 'artifact#show'

  resources :regions, :underground_region, :site, :artifact, only: [:index, :show]
end
