class ReviewsController < ApplicationController
  def index
    @reviews = Review.all
  end

  def show
    @review = Review.find(params[:id])
  end

  def new
    @dessert = Dessert.find(params[:dessert_id])
    @recipe = Recipe.find(params[:recipe_id])
    @review = Review.new
  end

  def create
    @recipe = Recipe.find(params[:recipe_id])
    @review = @recipe.reviews.create!(review_params.merge(user: current_user))
    redirect_to dessert_recipe_path(@recipe.dessert_id, @recipe), notice: "You added a new comment."
  end

  def edit
    @dessert = Dessert.find(params[:dessert_id])
    @recipe = Recipe.find(params[:recipe_id])
    @review = Review.find(params[:id])
  end

  def update
    @recipe = Recipe.find(params[:recipe_id])
    @review = Review.find(params[:id])
    if @review.user == current_user
      @review.update!(review_params)
    else
      flash[:alert] = "You can't update this!"
    end
    redirect_to dessert_recipe_path(@recipe.dessert_id, @recipe), notice: "You updated your comment."
  end

  def destroy
    @recipe = Recipe.find(params[:recipe_id])
    @review = Review.find(params[:id])
    if @review.user == current_user
      @review.destroy
    else
      flash[:alert] = "You can't delete this!"
    end
    redirect_to dessert_recipe_path(@recipe.dessert_id, @recipe), alert: "You deleted your comment."
  end

  private
  def review_params
    params.require(:review).permit(:body)
  end
end
