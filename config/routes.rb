Rails.application.routes.draw do
  root 'welcome#index'
  devise_for :users
  resources :contacts, only: :create
  get 'contact-us', to: 'contacts#new', as: 'new_contact'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
end
