Rails.application.routes.draw do
  resources :inputs
  resources :directs
  get 'recipes/index'

  get 'recipes/new'

  get 'recipes/create'

  get 'recipes/show'

  resources :users
  root "pages#home"
  get "about"=>"pages#about"

 

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
