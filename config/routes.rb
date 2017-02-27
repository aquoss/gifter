Rails.application.routes.draw do

  devise_for :users, :controllers => { :registrations => :registrations }

  root to: 'home#index'

  get '/users/:id', to: 'users#show', as: 'user'

  get '/recipients/:id', to: 'recipients#show', as: 'recipient'
  get '/recipients/:id/edit', to: 'recipients#edit', as: 'edit_recipient'
  patch '/recipients/:id', to: 'recipients#update'
  patch '/recipients/:id/traits/:trait_id', to: 'traits#update', as: 'edit_traits'

  post '/recipients/:id/events', to: 'events#create', as: 'new_recipient_event'


  # post '/users/:id/payment', to: 'payment#create', as: 'payment'

  # get '/users/:id/payment/new', to: 'payment#new', as: 'new_payment'

  # get '/users/:id/charges', to: 'charges#index', as: 'charges'
  # post '/users/:id/charges', to: 'charges#create'

end
