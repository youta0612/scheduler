class Member < ApplicationRecord
    belongs_to :team
    has_many :participants
    has_many :games, through: :participant
end
