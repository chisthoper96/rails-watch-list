Rails.application.routes.draw do
  get 'movies/index'
  get 'movies/show'
  root to: 'lists#index'
  resources :lists, except: [:edit, :update, :destroy] do
    resources :bookmarks, only: [:new, :create]
  end
  resources :bookmarks, only: :destroy
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
