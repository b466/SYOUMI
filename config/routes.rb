Rails.application.routes.draw do

  root 'homes#top'
  post 'confirm' => 'orders#confirm'
  post "pay" => "orders#pay"
  get 'inquiry' => 'inquiries#index'              # 入力画面
  post 'inquiry/confirm' => 'inquiries#confirm'   # 確認画面
  post 'inquiry/thanks' => 'inquiries#thanks'     # 送信完了画面
  post 'favorite/:id' => 'favorites#create', as: 'create_favorite'
  delete 'favorite/:id' => 'favorites#destroy', as: 'destroy_favorite'
  get 'favorites' => 'favorites#index'




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
    resources :members, only: [:index, :show, :edit, :update, :destroy]
    resources :shops
    resources :products 
  end
 
  resources :members, only: [:show, :edit, :update, :index] 
  resources :genres, only: [:new, :create, :index, :edit, :update, :destroy]
  resources :shops do
    resources :products, only: [:index, :show, :edit, :update, :destroy]
  end  
  resources :orders, only: [:new, :create, :index, :show]
  resources :order_products, only: [:index, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
