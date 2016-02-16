class RemoveKitchenFromRecipes < ActiveRecord::Migration
  def change
    remove_column :recipes, :kitchen, :string
  end
end
