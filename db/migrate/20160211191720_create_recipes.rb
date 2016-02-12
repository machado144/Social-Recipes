class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :recipe
      t.string :kitchen
      t.string :food
      t.string :kind
      t.integer :quantity
      t.integer :time
      t.string :difficulty
      t.text :ingredients
      t.text :steps

      t.timestamps null: false
    end
  end
end
