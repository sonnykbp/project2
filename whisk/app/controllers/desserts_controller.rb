class DessertsController < ApplicationController
  def index
      @desserts = Dessert.all
      # @desserts = Dessert.all.order('name ASC')
    end

    def show
      @dessert = Dessert.find(params[:id])
    end

    def new
      @dessert = Dessert.new
    end

    def create
      @dessert = Dessert.create(dessert_params)
      redirect_to desserts_path, notice: "You created a new #{@dessert.name}."

    end

    def edit
      @dessert = Dessert.find(params[:id])
    end

    def update
      @dessert = Dessert.find(params[:id])
      @dessert.update(dessert_params)
      redirect_to dessert_path(@dessert), notice: "You updated #{@dessert.name}."

    end

    def destroy
      @dessert = Dessert.find(params[:id])
      @dessert.destroy
      redirect_to desserts_path, notice: "You deleted #{@dessert.name}."

    end

    private
    def dessert_params
      params.require(:dessert).permit(:name, :dessert_image)
    end
end
