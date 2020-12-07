class CreateMeals < ActiveRecord::Migration[6.0]
  def change
    create_table :meals do |t|
      t.string :name
      t.integer :calories
      t.integer :protein
      t.integer :fat
      t.integer :carbs
      t.integer :fiber
      t.string :ingredients
      t.string :flavor_boosters
      t.text :recipe

      t.timestamps
    end
  end
end
