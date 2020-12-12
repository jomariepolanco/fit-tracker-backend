class CreateExerciseWorkouts < ActiveRecord::Migration[6.0]
  def change
    create_table :exercise_workouts do |t|
      t.integer :workout_id
      t.integer :exercise_id
      t.integer :reps
      t.integer :sets

      t.timestamps
    end
  end
end
