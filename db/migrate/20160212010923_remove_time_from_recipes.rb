class RemoveTimeFromRecipes < ActiveRecord::Migration
  def change
    remove_column :recipes, :time, :integer
  end
end
