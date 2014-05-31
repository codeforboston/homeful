Rails.application.routes.draw do
  devise_for :users

  get 'partners/show'

  get 'partners/new'

  get 'partners/create'

  get 'partners/update'

  get 'donors/show'

  get 'donors/new'

  get 'donors/create'

  get 'donors/update'

  get 'clients/show'

  get 'clients/new'

  get 'clients/create'

  get 'clients/update'

end
