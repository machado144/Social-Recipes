class RecipesController < ApplicationController
  before_action :set_recipe, only: [:show]
  before_action :set_collections

  def show
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)
    if @recipe.save
      redirect_to @recipe
    else
      render :new
    end
  end

  def set_collections
    @kinds = Kind.all
    @meals = Meal.all
    @kitchens = Kitchen.all
  end

  private

  def recipe_params
    params.require(:recipe).permit(:recipe, :kitchen_id, :kind_id, :quantity,
                                   :time, :difficulty, :ingredients, :steps,
                                   :meal_id, :upload)
  end

  def set_recipe
    @recipe = Recipe.find(params[:id])
  end
end
