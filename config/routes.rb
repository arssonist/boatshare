Rails.application.routes.draw do

  get 'reservations/index'

  get 'reservations/new'

  get 'reservations/create'

  get 'reservations/show'

  get 'reservations/destroy'

  get 'reservations/edit'

  get 'reservations/update'

 root :to => 'voyages#index'
 resources :user_sessions
 resources :users do
   resources :voyages
 end

 get 'login' => 'user_sessions#new', :as => :login
 post 'logout' => 'user_sessions#destroy', :as => :logout

end
