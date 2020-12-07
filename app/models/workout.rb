class Workout < ApplicationRecord
    has_many :workout_days
    has_many :days, through: :workouts 
end
