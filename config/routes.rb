Rails.application.routes.draw do
  devise_for :users, :controllers => { :registrations => "user/registrations" }
  root "welcome#index"
  get 'my_port', to: "users#my_port"
  get 'search_stocks', to: 'stocks#search'
  resources :user_stocks, only: [:create, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
