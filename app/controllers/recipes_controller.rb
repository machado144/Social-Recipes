class RecipesController < ApplicationController
  before_action :set_recipe, only: [:show]
  before_action :set_collections

  def show
  end

  def kind
    @gluten = Recipe.where(kind: 'Sem Glutén')
    @lactose = Recipe.where(kind: 'Sem Lactose')
    @sabor = Recipe.where(kind: 'Sem Sabor')
  end

  def meal
    @jantar = Recipe.where(meal: 'Jantar')
    @sobremesa = Recipe.where(meal: 'Sobremesa')
    @cafe = Recipe.where(meal: 'Café da Manhã')
  end

  def kitchen
    @espanhola = Recipe.where(kitchen: 'Espanhola')
    @japonesa = Recipe.where(kitchen: 'Japonesa')
    @brasileira = Recipe.where(kitchen: 'Brasileira')
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
    params.require(:recipe).permit(:recipe, :kitchen, :food, :kind, :quantity,
                                   :time, :difficulty, :ingredients, :steps,
                                   :meal, :upload)
  end

  def set_recipe
    @recipe = Recipe.find(params[:id])
  end
end
