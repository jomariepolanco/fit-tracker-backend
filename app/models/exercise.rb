class Exercise < ApplicationRecord
    has_many :exericse_workouts
    has_many :workouts, through: :exericse_workouts
end
