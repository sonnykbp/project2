class CreateRecipes < ActiveRecord::Migration[5.1]
  def change
    create_table :recipes do |t|
      t.string :name
      t.text :description
      t.text :ingredients, array: true
      t.text :direction
      t.integer :preptime
      t.integer :cooktime
      t.string :recipe_image
      t.references :dessert, index: true, foreign_key: true, null: false

      t.timestamps
    end
  end
end
