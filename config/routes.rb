Rails.application.routes.draw do
  root to: 'projects#index'
  devise_for :users
  resources :projects do
    resources :kpts, except: %i(edit update destroy)
  end
  resources :keep_things, only: %i(index)
  resources :try_things, only: %i(index)
end
