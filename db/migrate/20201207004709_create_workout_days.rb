class CreateWorkoutDays < ActiveRecord::Migration[6.0]
  def change
    create_table :workout_days do |t|
      t.integer :workout_id
      t.integer :day_id

      t.timestamps
    end
  end
end
