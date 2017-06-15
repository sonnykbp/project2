class RecipesController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  def add_favorite
    @recipe = Recipe.find(params[:id])
    @recipe.favorites.create(user: current_user)
    redirect_to dessert_recipe_path(@recipe.dessert_id, @recipe), notice: "You added #{@recipe.name} to your favorite!"

  end

  def remove_favorite
    @recipe = Recipe.find(params[:id])
    @favorite = Favorite.find_by(user: current_user, recipe_id: params[:id])
    @favorite.destroy
    redirect_to dessert_recipe_path(@recipe.dessert_id, @recipe), notice: "You removed #{@recipe.name} from your favorite!"
  end
  # index
  def index
    @recipes = Recipe.all
  end

  #show
  def show
    @recipe = Recipe.find(params[:id])
    # @review = Review.find(params[:id])
  end

  # new
  def new
    @dessert = Dessert.find(params[:dessert_id])
    @recipe = @dessert.recipes.new
  end

  # create
  def create
    @dessert = Dessert.find(params[:dessert_id])
    # @user = Recipe.find(params[:user])
    @recipe = @dessert.recipes.create!(recipe_params.merge(user: current_user, ingredients: params[:recipe][:ingredients].split(",")))
    redirect_to dessert_path(@dessert), notice: "You added a new recipe to #{@dessert.name}."
  end

  # edit
  def edit
    @dessert = Dessert.find(params[:dessert_id])
    @recipe = Recipe.find(params[:id])

  end

  # update
  def update
    @recipe = Recipe.find(params[:id])
    if @recipe.user == current_user
      @recipe.update!(recipe_params.merge(user: current_user, ingredients: params[:recipe][:ingredients].split(",")))
    else
      flash[:alert] = "You can't update this!"
    end
    redirect_to dessert_recipe_path(@recipe.dessert_id, @recipe), notice: "You updated #{@recipe.name}."
  end

  # destroy
  def destroy
    @recipe = Recipe.find(params[:id])
    if @recipe.user == current_user
    @recipe.destroy
  else
    flash[:alert] = "You can't delete this!"
  end
    redirect_to dessert_path(@recipe.dessert_id), alert: "You deleted #{@recipe.name}!"
  end

  private
  def recipe_params
    params.require(:recipe).permit(:name, :description, :ingredients, :direction, :preptime, :cooktime, :recipe_image)
  end
end
