class Stat < ApplicationRecord
    belongs_to :user 
    belongs_to :exercise

    validates :user_id, :exercise_id, :weight, :comment, presence: true
end
