Rails.application.routes.draw do
  resources :matches
  #get 'home/Home'

  root 'home#Home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
