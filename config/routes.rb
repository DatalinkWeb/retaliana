Rails.application.routes.draw do
  get 'carts/show'
  devise_for :users, path_names: {sign_in: 'login', sign_out: 'logout', sign_up: 'register'}
  resources :floors
  resource :cart, only: [:show] do
    put 'add/:floor_id', to: 'carts#add', as: :add_to
    put 'remove/:floor_id', to: 'carts#remove', as: :remove_from
  end
  root 'floors#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
