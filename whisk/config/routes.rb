Rails.application.routes.draw do
  get 'recipes/index'

  get 'recipes/new'

  get 'recipes/create'

  get 'recipes/show'

  get 'recipes/edit'

  get 'recipes/update'

  get 'recipes/destroy'

  get 'desserts/index'

  get 'desserts/new'

  get 'desserts/create'

  get 'desserts/show'

  get 'desserts/edit'

  get 'desserts/update'

  get 'desserts/destroy'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
