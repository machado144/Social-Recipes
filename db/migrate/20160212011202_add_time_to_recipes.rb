class AddTimeToRecipes < ActiveRecord::Migration
  def change
    add_column :recipes, :time, :string
  end
end
