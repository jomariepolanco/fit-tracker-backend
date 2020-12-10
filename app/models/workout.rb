class Workout < ApplicationRecord
    has_many :workout_days
    has_many :exercise_workouts
    has_many :days, through: :workouts 
    has_many :exercises, through: :exercise_workouts
end
