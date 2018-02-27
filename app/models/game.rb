class Game < ApplicationRecord
    belongs_to :team
    has_many :participants
    has_many :members, through: :participants
end
