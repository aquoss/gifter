Rails.application.routes.draw do

  devise_for :users
  root to: 'home#index'

  get '/users/:id', to: 'users#show', as: 'user'

  get '/users/:id/new', to: 'users#new', as: 'new_user'
  post '/users/:id/new', to: 'users#create'

  get '/users/:user_id/recipients/:id', to: 'recipients#show', as: 'recipient'
  post '/users/:user_id/recipients/:id/gift_ideas', to: 'gift_ideas#create', as: 'new_gift_idea'

  # post '/users/:id/payment', to: 'payment#create', as: 'payment'

  # get '/users/:id/payment/new', to: 'payment#new', as: 'new_payment'

  # get '/users/:id/charges', to: 'charges#index', as: 'charges'
  # post '/users/:id/charges', to: 'charges#create'

end
