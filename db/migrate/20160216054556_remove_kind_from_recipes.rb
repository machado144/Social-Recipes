class RemoveKindFromRecipes < ActiveRecord::Migration
  def change
    remove_column :recipes, :kind, :string
  end
end
