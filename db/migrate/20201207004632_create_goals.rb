class CreateGoals < ActiveRecord::Migration[6.0]
  def change
    create_table :goals do |t|
      t.integer :sleep
      t.string :nutrition
      t.integer :hydration
      t.integer :steps
      t.string :intentions
      t.string :reflections
      t.integer :day_id

      t.timestamps
    end
  end
end
