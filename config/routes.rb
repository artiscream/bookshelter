Rails.application.routes.draw do
	
  get 'orders/new'

  get 'comments/new'

  get 'products/show'

  get 'userparams/new'

  get 'userparams/edit'

  


  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root to: 'home#index'


  devise_scope :user do
  	get 'sign_in', to: 'devise/sessions#new'
  	get 'sign_out', to: 'devise/sessions#destroy'
  	get 'sign_up', to: 'devise/registrations#new'
  end

  get 'show', to: 'home#show'
  
    get 'profile', to: 'userparams#profile'

    get 'show_comments', to: 'comments#show'
    get 'buy_product', to: 'orders#new'

  put 'product_comment', to: 'comments#destroy'

    resources :userparams


    resources :orders do 
      member do
        put :pay
        put :delete
      end
   end
    
    resources :comments
    
    resources :products do
      resources :comments
    end
    
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
