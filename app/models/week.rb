class Week < ApplicationRecord
    has_many :days
    has_many :trackings
end
