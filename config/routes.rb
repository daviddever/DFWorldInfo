Rails.application.routes.draw do

  root                                   'static_pages#home'
  get 'help'                          => 'static_pages#help'

  resources :regions, :underground_region, :site, :artifact, :historical_figure, :sphere, only: [:index, :show]
end
