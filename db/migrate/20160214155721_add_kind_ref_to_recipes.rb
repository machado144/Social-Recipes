class AddKindRefToRecipes < ActiveRecord::Migration
  def change
    add_reference :recipes, :kind, index: true, foreign_key: true
  end
end
