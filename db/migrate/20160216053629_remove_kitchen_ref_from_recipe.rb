class RemoveKitchenRefFromRecipe < ActiveRecord::Migration
  def change
    remove_reference :recipes, :kitchen, index: true, foreign_key: true
  end
end
