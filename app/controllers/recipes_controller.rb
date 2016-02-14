class RecipesController < ApplicationController
  before_action :set_recipe, only: [:show]

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

  private

  def recipe_params
    params.require(:recipe).permit(:recipe, :kitchen, :kitchens, :kitchen_id,
                                   :food, :kind, :quantity, :time, :difficulty,
                                   :ingredients, :steps, :food_id, :foods,
                                   :meal, :meals, :meal_id, :upload)
  end

  def set_recipe
    @recipe = Recipe.find(params[:id])
  end
end
