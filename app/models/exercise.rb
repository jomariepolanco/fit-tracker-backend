class Exercise < ApplicationRecord
    has_many :exercise_workouts
    has_many :stats
    has_many :workouts, through: :exercise_workouts
    has_many :users, through: :stats 

    validates :name, :description, presence: true
end
