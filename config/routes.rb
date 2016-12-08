Rails.application.routes.draw do
  resources :teams
  resources :players
  resources :matches

  root 'home#Home'
	  get  'contact', to: 'home#contact'
	  post 'request_contact', to: 'home#request_contact'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
