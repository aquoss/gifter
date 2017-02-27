Rails.application.routes.draw do

  devise_for :users, :controllers => { :registrations => :registrations }

  root to: 'home#index'

  get '/users/:id', to: 'users#show', as: 'user'

  get '/recipients/:id', to: 'recipients#show', as: 'recipient'
  put '/recipients/:id', to: 'recipients#update'

  # post '/users/:id/payment', to: 'payment#create', as: 'payment'

  # get '/users/:id/payment/new', to: 'payment#new', as: 'new_payment'

  # get '/users/:id/charges', to: 'charges#index', as: 'charges'
  # post '/users/:id/charges', to: 'charges#create'

end
