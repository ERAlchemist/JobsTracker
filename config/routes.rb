Rails.application.routes.draw do
	root "jobs#index"
  resources :prospects do
    member do
      patch :move_to_applied
    end
  end
  resources :jobs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
