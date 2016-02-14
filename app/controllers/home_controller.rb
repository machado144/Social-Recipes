class HomeController < ApplicationController
  def index
    @recipes = Recipe.all
    @recents = Recipe.all.order('created_at DESC').limit(20)
  end
end
