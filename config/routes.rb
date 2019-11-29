Rails.application.routes.draw do
  get 'home/index'

  resources :tasks
  resources :projects
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  unauthenticated :user do
    root 'home#index'
  end
  authenticated :user do
    # Rails 3 syntax
    # root :to => "main#dashboard"
    # Rails 4 requires the 'as' option to give it a unique name
    root :to => "projects#index", :as => "authenticated_root"
  end
end
