class AddMealRefToRecipes < ActiveRecord::Migration
  def change
    add_reference :recipes, :meal, index: true, foreign_key: true
  end
end
