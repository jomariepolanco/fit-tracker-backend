class CreateMealDays < ActiveRecord::Migration[6.0]
  def change
    create_table :meal_days do |t|
      t.integer :meal_id
      t.integer :day_id

      t.timestamps
    end
  end
end
