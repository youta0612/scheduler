class Team < ApplicationRecord
    has_many :games
    has_many :members
end
