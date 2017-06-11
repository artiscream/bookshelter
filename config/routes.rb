Rails.application.routes.draw do


  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  root 'books#index'



get 'show_comments', to: 'comments#show'
 put 'book_comment', to: 'comments#destroy'

resources :comments
    
    resources :books do
      resources :comments
    end

  resources :books do
  	member do
  		put "like" => "books#upvote"
  		put "dislike" => "books#downvote"
  	end
  end

   resources :orders do 
      member do
        put :pay
        put :delete
      end
   end

   resources :waitlists do
    resources :books
  end

  resources :waitlists do 
    member do
      put :delete
    end
end

    get 'buy_book', to: 'orders#new'
    get 'add_book_to_waitlist', to: 'waitlists#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
