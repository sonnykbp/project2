class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    @recipe = Recipe.where(user_id: current_user)
    @favorite = Favorite.where(user_id: current_user)

  end

  def show
  end

  def edit
  end
end
