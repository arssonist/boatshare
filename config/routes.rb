Rails.application.routes.draw do

  get 'password_resets/edit'

  get 'password_resets/update'

 root :to => 'voyages#index'
 resources :user_sessions
 resources :users

 resources :voyages do
   resources :reservations
 end

 get 'login' => 'user_sessions#new', :as => :login
 post 'logout' => 'user_sessions#destroy', :as => :logout

 resources :password_resets

end
#destroy', :as => :logout
