class RemoveFoodFromRecipes < ActiveRecord::Migration
  def change
    remove_column :recipes, :food, :string
  end
end
