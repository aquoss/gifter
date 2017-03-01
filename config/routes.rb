Rails.application.routes.draw do

  devise_for :users, :controllers => { :registrations => :registrations }

  root to: 'home#index'

  get '/users/:id', to: 'users#show', as: 'user'

  get '/recipients/:id', to: 'recipients#show', as: 'recipient'
  post '/users/:id/recipients', to: 'recipients#create', as: 'new_recipient'
  get '/recipients/:id/edit', to: 'recipients#edit', as: 'edit_recipient'
  patch '/recipients/:id', to: 'recipients#update'
  patch '/recipients/:id/traits/:trait_id', to: 'traits#update', as: 'edit_traits'

  post '/recipients/:id/events', to: 'events#create', as: 'new_recipient_event'
  delete '/recipients/:id/events/:event_id', to: 'events#destroy', as: 'delete_recipient_event'

  get '/recipients/:id/events/:event_id/gifts', to: 'gifts#index', as: 'gift'
  get '/recipients/:id/events/:event_id/gifts/:gift_id/charges', to: 'charges#new', as: 'new_charge'
  post '/recipients/:id/events/:event_id/gifts/:gift_id/charges', to: 'charges#create'

  get '/recipients/:id/events/:event_id/gifts/:gift_id/orders', to: 'orders#new', as: 'new_order'
  post '/recipients/:id/events/:event_id/gifts/:gift_id/orders', to: 'orders#create'
  patch '/users/:id/orders/:order_id', to: 'orders#update', as: 'edit_order'


end
