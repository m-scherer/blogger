Rails.application.routes.draw do

  resources :articles, only: [:index, :show, :new, :create, :edit, :update, :destroy]

  resources :articles do
    resources :comments
  end
  resources :tags

  root to: 'articles#index'

end
