Rails.application.routes.draw do
  # get 'reviews/index'
  #
  # get 'reviews/show'
  #
  # get 'reviews/new'
  #
  # get 'reviews/create'
  #
  # get 'reviews/edit'
  #
  # get 'reviews/update'
  #
  # get 'reviews/destroy'
  #
  get 'users/index'

  get 'users/show'

  get 'users/edit'

  devise_for :users
  root to: 'desserts#index'

  resources :desserts do
    resources :recipes do
      resources :reviews
    end
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
