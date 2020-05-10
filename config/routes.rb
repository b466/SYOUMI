Rails.application.routes.draw do
  root 'homes#top'

  devise_for :admins, controllers: {
  sessions:      'admins/sessions',
  passwords:     'admins/passwords',
  registrations: 'admins/registrations'
}
  devise_for :members, controllers: {
  sessions:      'members/sessions',
  passwords:     'members/passwords',
  registrations: 'members/registrations'
}

  namespace :admin do
    resources :order_products, only: [:new, :index, :show, :edit, :update]
    resources :orders, only: [:new, :index, :show, :edit, :update]
    resources :members, only: [:index, :show, :edit, :update]
    resources :shops
    resources :products 
  end
 
  resources :members, only: [:show, :edit, :update]
  resources :products, only: [:index, :show]
  resources :cart_items, only: [:new, :create, :index, :edit, :update, :destroy]
  resources :orders, only: [:new, :create, :index, :show]
  resources :order_products, only: [:index, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
