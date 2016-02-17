class HomeController < ApplicationController
  before_action :set_collections, only: [:index]
  def index
    @recipes = Recipe.all
  end

  def set_collections
    @recipes = Recipe.all
    @recents = Recipe.last(20)
    @meals = Meal.all
    @kinds = Kind.all
    @kitchens = Kitchen.all
  end
end
