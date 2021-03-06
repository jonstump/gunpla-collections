Rails.application.routes.draw do

  devise_for :users

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  root to: 'gunplas#index'

  get '/gunplas/collection', to: 'gunplas#show_collection'

  delete '/gunplas/:gunpla_id/collection', to: 'gunplas#delete_gunpla_from_collection'

  resources :gunplas, only: [:index, :show] do
    post 'collection', to: 'gunplas#add_collection'
    resources :reviews, except: [:index]
  end

end
