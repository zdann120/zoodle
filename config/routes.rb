Rails.application.routes.draw do
  devise_for :users
  get 'static/index'

  ActiveAdmin.routes(self)
  
  
  resources :polls do
  	resources :subscribers
  	resources :choices do
      put 'mark_final' => 'choices#mark_final'
    end
    put 'close' => 'polls#close'
    put 'open' => 'polls#open'
    post 'invite' => 'polls#invite'
  end

  root 'static#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Serve websocket cable requests in-process
  # mount ActionCable.server => '/cable'
end
