class MealsController < ApplicationController
  before_action :set_meal, only: [:edit, :update, :show]

  def new
    @meal = Meal.new
  end

  def create
    @meal = Meal.new(meal_params)
    if @meal.save
      redirect_to admin_index_path
    else
      render :new
    end
  end

  def index
    @meals = Meal.all
  end

  private

  def meal_params
    params.require(:meal).permit(:name)
  end

  def set_meal
    @meal = Meal.find(params[:id])
  end
end
