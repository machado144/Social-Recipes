class HomeController < ApplicationController
  before_action :set_collections, only: [:index]
  def index
    @recipe = Recipe.where(name: :name)
    @recipes = Recipe.all
  end

  def set_collections
    @recipes = Recipe.all
    @recents = Recipe.all.order('created_at DESC').limit(20)
    @meals = Meal.all
    @kinds = Kind.all
    @kitchens = Kitchen.all
  end

end
