class Day < ApplicationRecord
    belongs_to :week 
    has_many :goals
    has_many :workout_days
    has_many :meal_days
    has_many :workouts, through: :workout_days 
    has_many :meals, through: :meal_days 
end
