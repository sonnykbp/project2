Rails.application.routes.draw do
  devise_for :users
  root to: 'desserts#index'

  resources :desserts do
    resources :recipes
  end

  resources :recipes, only: [:index, :show] do
    member do
      post 'add_favorite'
      delete 'remove_favorite'
    end
  end
  # get 'recipes/index'
  #
  # get 'recipes/new'
  #
  # get 'recipes/create'
  #
  # get 'recipes/show'
  #
  # get 'recipes/edit'
  #
  # get 'recipes/update'
  #
  # get 'recipes/destroy'
  #
  # get 'desserts/index'
  #
  # get 'desserts/new'
  #
  # get 'desserts/create'
  #
  # get 'desserts/show'
  #
  # get 'desserts/edit'
  #
  # get 'desserts/update'
  #
  # get 'desserts/destroy'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
