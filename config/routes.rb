Rails.application.routes.draw do



 root :to => 'voyages#index'
 resources :user_sessions
 resources :users


 resources :voyages do
   resources :reservations
 end
 
 get 'login' => 'user_sessions#new', :as => :login
 post 'logout' => 'user_sessions#destroy', :as => :logout

end
