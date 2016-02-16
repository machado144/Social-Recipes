class RemoveMealFromRecipes < ActiveRecord::Migration
  def change
    remove_column :recipes, :meal, :string
  end
end
