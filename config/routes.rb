Rails.application.routes.draw do


  root "helper_request#index"
  resources :sendmailers
  get 'admin' , :to => "access#index"

match ':controller(/:action(/:id))' , :via => [:get, :post]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
