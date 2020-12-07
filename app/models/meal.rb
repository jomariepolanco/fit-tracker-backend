class Meal < ApplicationRecord
    has_many :meal_days
    has_many :days, through: :meal_days 
end
