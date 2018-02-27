class Member < ApplicationRecord
    belongs_to :team
    has_one :participant
    has_many :games, through: :participant
end
